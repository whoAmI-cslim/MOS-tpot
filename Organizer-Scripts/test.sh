
fileDate=$(date +%m-%d-%Y -d 'yesterday')

find /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attack-Data -ls | while read line
   do
   fileName=$(echo $line | awk '{print $11}')
   cat $fileName 2>/dev/null | jq -r '.src_ip, .dst_ip' 2>/dev/null | xargs -n 2
   done > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/src-dst-ip-address

   cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/src-dst-ip-address | grep -v "null" | sort | uniq > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/sorted-ip-addresses
   rm /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/src-dst-ip-address

   input=$(cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/sorted-ip-addresses)

 while read src_ip dst_ip;
  do
    domain=$(dig +short -x "$src_ip")
    org=$(whois "$src_ip" | grep -i OrgName | awk 'NR==1{print $2}')
    loc=$(geoiplookup "$src_ip" | awk '{print $5, $6, $7, $8, $9}')
    if [ -n "$domain" ];
     then
      printf "\e[42m\e[30m%sIP Address: $src_ip | %sLocation: $loc | %sTarget: $dst_ip  | %sOrg: $org \e[0m \n" >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-wDomain
     else
      printf "\e[45m%sIP Address: $src_ip | %sLocation: $loc | %sTarget: $dst_ip \e[0m  \n" >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-woDomain
    fi
    if  [[ $domain == *"connection timed out; no servers could be reached"* ]];
     then
      printf "\e[41m%sIP Address: $src_ip | %sIP Address Not Active \e[0m \n" >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Inactive-IPs
    fi
  done <<< "$input"

       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-wDomain | grep -v 'Domain: ;; connection timed out; no servers could be reached' > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs
       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-woDomain  >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs
       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Inactive-IPs  >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs
       mv /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details
       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | column -ts '|'  > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details2
       rm /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details
       mv /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details2 /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details

       mkdir /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-Related-Data
       mv Sorted-Active-IPs Inactive-IPs Active-IPs-woDomain Active-IPs-wDomain /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-Related-Data

