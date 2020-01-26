fileDate=$(date +%m-%d-%Y -d 'yesterday')

find /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attack-Data -ls | while read line
   do
   fileName=$(echo $line | awk '{print $11}')
   cat $fileName 2>/dev/null | jq -r '.src_ip, .dst_ip' 2>/dev/null | xargs -n 2
   done > ips
   sort < ips | uniq | grep -v "null" > test2
   rm ips
   mv test2 ips
