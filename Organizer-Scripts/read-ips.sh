input=ips

while read src_ip dst_ip;
do
 domain=$(dig +short -x $src_ip)
 org=$(whois $src_ip | grep -i OrgName | awk 'NR==1{print $2}')
 loc=$(geoiplookup $src_ip | awk '{print $5, $6, $7, $8, $9}')
 if [ -n "$domain" ];
  then
    printf "\e[42m\e[30m%sIP Address: $src_ip | %sLocation: $loc | %sTarget: $dst_ip  | %sOrg: $org \e[0m \n" >> Active-IPs-wDomain
  else
    printf "\e[45m%sIP Address: $src_ip | %sLocation: $loc | %sTarget: $dst_ip \e[0m  \n" >> Active-IPs-woDomain
 fi
 if  [[ $domain == *"connection timed out; no servers could be reached"* ]];
  then
    printf "\e[41m%sIP Address: $src_ip | %sIP Address Not Active \e[0m \n" >> Inactive-IPs
 fi
done < "$input"

