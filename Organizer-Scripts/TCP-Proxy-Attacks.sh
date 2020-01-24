#!/bin/bash
    command -v geoiplookup >/dev/null 2>&1 || { echo >&2 "I require geoiplookup but it's not installed.  Aborting."; exit 1; }

    mkdir -p /root/MOS-tpot/cowrie-logs/ 2> /dev/null
    cp /data/cowrie/log/cowrie.json.2020-01-23 /root/MOS-tpot/cowrie-logs/

    mv /root/MOS-tpot/cowrie-logs/cowrie.json.2020-01-23 /root/MOS-tpot/cowrie-logs/cowrie.json

    str=message

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "ttvnw.net" > /root/MOS-tpot/cowrie-logs/twitch-attacks
    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "twitch.tv" >> /root/MOS-tpot/cowrie-logs/twitch-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/twitch-attacks) == *"$str"* ]]
     then
      echo "Twitch attacks found!"
     else
      echo "No twitch attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "ubi.com" > /root/MOS-tpot/cowrie-logs/ubi-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/ubi-attacks) == *"$str"* ]]
     then
      echo "Ubi.com attacks found!"
     else
      echo "No Ubi.com attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "instagram.com" > /root/MOS-tpot/cowrie-logs/instagram-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/instagram-attacks) == *"$str"* ]]
     then
      echo "Instagram attacks found!"
     else
      echo "No Instagram attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "trycaviar.com" > /root/MOS-tpot/cowrie-logs/trycaviar-attacks
     if [[ $(< /root/MOS-tpot/cowrie-logs/trycaviar-attacks) == *"$str"* ]]
     then
      echo "Trycaviar.com attacks found!"
     else
      echo "No trycaviar.com attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "trycaviar.com" > /root/MOS-tpot/cowrie-logs/phoneclaim-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/phoneclaim-attacks) == *"$str"* ]]
     then
      echo "Phoneclaim.com attacks found!"
     else
      echo "No Phoneclaim.com attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "levelup.com" > /root/MOS-tpot/cowrie-logs/levelup-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/levelup-attacks) == *"$str"* ]]
     then
      echo "LevelUp attacks found!"
     else
      echo "No LevelUp attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "gstatic.com" > /root/MOS-tpot/cowrie-logs/gstatic-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/gstatic-attacks) == *"$str"* ]]
     then
      echo "GStatic attacks found!"
     else
      echo "No GStatic attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "steampowered.com" > /root/MOS-tpot/cowrie-logs/steampowered-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/steampowered-attacks) == *"$str"* ]]
     then
      echo "Steampowered attacks found!"
     else
      echo "No Steampowered attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "bitesquad.com" > /root/MOS-tpot/cowrie-logs/bitesquad-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/bitesquad-attacks) == *"$str"* ]]
     then
      echo "Bitesquad attacks found!"
     else
      echo "No Bitesquad attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "youtube.com" > /root/MOS-tpot/cowrie-logs/youtube-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/youtube-attacks) == *"$str"* ]]
     then
      echo "Youtube attacks found!"
     else
      echo "No Youtube attacks found!"
    fi

     cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "google.com" > /root/MOS-tpot/cowrie-logs/google-attacks
     if [[ $(< /root/MOS-tpot/cowrie-logs/google-attacks) == *"$str"* ]]
     then
      echo "Google attacks found!"
     else
      echo "No Google attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "pof.com" > /root/MOS-tpot/cowrie-logs/pof-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/pof-attacks) == *"$str"* ]]
     then
      echo "Plenty of Fish attacks found!"
     else
      echo "No Plenty of Fish attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "api.ipify.org" > /root/MOS-tpot/cowrie-logs/ipify-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/ipify-attacks) == *"$str"* ]]
     then
      echo "Ipify attacks found!"
     else
      echo "No Ipify attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "googleapis.com" > /root/MOS-tpot/cowrie-logs/googleapi-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/googleapi-attacks) == *"$str"* ]]
     then
      echo "GoogleAPI attacks found!"
     else
      echo "No GoogleAPI attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "att.net" > /root/MOS-tpot/cowrie-logs/att-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/att-attacks) == *"$str"* ]]
     then
      echo "AT&T attacks found!"
     else
      echo "No AT&T attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "amazon.com" > /root/MOS-tpot/cowrie-logs/amazon-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/amazon-attacks) == *"$str"* ]]
     then
      echo "Amazon attacks found!"
     else
      echo "No Amazon attacks found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep "HTTP" > /root/MOS-tpot/cowrie-logs/HTTP-requests
    if [[ $(< /root/MOS-tpot/cowrie-logs/HTTP-requests) == *"$str"* ]]
     then
      echo "HTTP requests found!"
     else
      echo "No HTTP requests found!"
    fi

    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep -v -E "phoneclaim.com|trycaviar.com|ubi.com|HTTP|levelup.com|instagram.com|ttvnw.net|youtube.com|pof.com|ipify.org|googleapis.com|twitch.tv|google.com|att.net|amazon.com|bitesquad.com|steampowered.com|gstatic.com" > /root/MOS-tpot/cowrie-logs/other-attacks
    if [[ $(< /root/MOS-tpot/cowrie-logs/other-attacks) == *"$str"* ]]
     then
      echo "Other attacks found!"
     else
      echo "No other attacks found!"
    fi

   fileDate=$(date +%m-%d-%Y)
   mv /root/MOS-tpot/cowrie-logs /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"

   mkdir /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attack-Data
   mv /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/* /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attack-Data 2>/dev/null

printf "\n \n \n"

echo "This part may take a bit. There are a lot of IP related commands being executed."

printf "\n \n \n"

find /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attack-Data -ls | while read line
   do
   fileName=$(echo $line | awk '{print $11}')
   cat $fileName 2>/dev/null | jq -r '.src_ip' 2>/dev/null
   done > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/src-ip-address
   cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/src-ip-address | sort | uniq > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/sorted-ip-addresses

    ipAddresses=$(cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/sorted-ip-addresses)

    for i in $ipAddresses;
      do
       domain=$(dig +short -x $i)
       org=$(whois $i | grep -i OrgName | awk 'NR==1{print $2}')
       loc=$(geoiplookup $i | awk '{print $5, $6, $7, $8, $9}')
       if [ -n "$domain" ];
        then
         printf "\e[42m\e[30m%sIP Address: $i | %sLocation: $loc | %sOrganization: $org  | %sDomain: $domain \e[0m \n" >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-wDomain
        else
         printf "\e[45m%sIP Address: $i | %sLocation: $loc \e[0m  \n" >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-woDomain
       fi
       if  [[ $domain == *"connection timed out; no servers could be reached"* ]];
        then
         printf "\e[41m%sIP Address: $i %s IP Address Not Active \e[0m \n" >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Inactive-IPs
       fi
      done > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details

       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-wDomain | grep -v 'Domain: ;; connection timed out; no servers could be reached' > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs
       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Active-IPs-woDomain  >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs
       cat /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Inactive-IPs  >> /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs
       rm /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details
       mv /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Sorted-Active-IPs /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details

mkdir /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information

  GermanyIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Germany")
  echo "Found $GermanyIP attacker IPs from Germany"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Germany" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/German-Attacker-Info
#  column /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts/Attacker-IP-Information/German-Attacker-Info -t -n > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts/Attacker-IP-Information/German-Attacker-Info

  FranceIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "France")
  echo "Found $FranceIP attacker IPs from France"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "France" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/French-Attacker-Info

  USIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "United States")
  echo "Found $USIP attacker IPs from the United States"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "United States" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/US-Attacker-Info

  HKIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Hong Kong")
  echo "Found $HKIP attacker IPs from Hong Kong"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Hong Kong" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/HongKong-Attacker-Info

  IrelandIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Ireland")
  echo "Found $IrelandIP attacker IPs from Ireland"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Ireland" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Ireland-Attacker-Info

  ChinaIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "China")
  echo "Found $ChinaIP attacker IPs from China"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "China" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/China-Attacker-Info

  ItalyIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Italy")
  echo "Found $ItalyIP attacker IPs from Italy"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Italy" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Italian-Attacker-Info

  CanadaIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Canada")
  echo "Found $CanadaIP attacker IPs from Canada"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Canada" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Canadian-Attacker-Info

  RUIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Russian Federation")
  echo "Found $RUIP attacker IPs from Russia"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Russian Federation" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Russian-Attacker-Info

  SpainIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Spain")
  echo "Found $SpainIP attacker IPs from Spain"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Spain" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Spanish-Attacker-Info

  BelgiumIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Belgium")
  echo "Found $BelgiumIP attacker IPs from Belgium"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Belgium" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Belgium-Attacker-Info

  TurkeyIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Turkey")
  echo "Found $TurkeyIP attacker IPs from Turkey"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Turkey" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Turkey-Attacker-Info

  SwedenIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Sweden")
  echo "Found $SwedenIP attacker IPs from Sweden"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Sweden" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Swedish-Attacker-Info

  RomaniaIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Romania")
  echo "Found $RomaniaIP attacker IPs from Romania"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Romania" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Romanian-Attacker-Info

  GreeceIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Greece")
  echo "Found $GreeceIP attacker IPs from Greece"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Greece" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Greek-Attacker-Info

  VietnamIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Vietnam")
  echo "Found $VietnamIP attacker IPs from Vietnam"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Vietnam" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Vietnamese-Attacker-Info

  TaiwanIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Taiwan")
  echo "Found $TaiwanIP attacker IPs from Taiwan"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Taiwan" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Taiwan-Attacker-Info

  BrazilIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Brazil")
  echo "Found $BrazilIP attacker IPs from Brazil"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Brazil" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Brazilian-Attacker-Info

  IndiaIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "India")
  echo "Found $IndiaIP attacker IPs from India"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "India" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Indian-Attacker-Info

  MexicoIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Mexico")
  echo "Found $MexicoIP attacker IPs from Mexico"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Mexico" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Mexican-Attacker-Info

  MacauIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Macau")
  echo "Found $MacauIP attacker IPs from Macau"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Macau" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Macau-Attacker-Info

  JapanIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Japan")
  echo "Found $JapanIP attacker IPs from Japan"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Japan" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Japanese-Attacker-Info

  IndonesiaIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Indonesia")
  echo "Found $IndonesiaIP attacker IPs from Indonesia"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Indonesia" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Indonesian-Attacker-Info

  AfricaIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Africa")
  echo "Found $AfricaIP attacker IPs from somewhere in Africa"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Africa" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/African-Attacker-Info

  NCIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "New Caledonia")
  echo "Found $NCIP attacker IPs from New Caledonia"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "New Caledonia" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/NewCaledonia-Attacker-Info

  PolandIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Poland")
  echo "Found $PolandIP attacker IPs from Poland"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Poland" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Polish-Attacker-Info

  EgyptIP=$(sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep -c "Egypt")
  echo "Found $EgyptIP attacker IPs from Egypt"
  sort < /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/IP-details | grep "Egypt" > /root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"/Attacker-IP-Information/Egyptian-Attacker-Info
