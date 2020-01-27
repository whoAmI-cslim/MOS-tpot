#!/bin/bash
    command -v geoiplookup >/dev/null 2>&1 || { echo >&2 "I require geoiplookup but it's not installed.  Aborting."; exit 1; }

    srcfileDate=$(date +%Y-%m-%d -d 'yesterday')
    dir1=/root/MOS-tpot/cowrie-logs

    mkdir -p $dir1/ 2> /dev/null
    cp /data/cowrie/log/cowrie.json.$srcfileDate $dir1/

    mv $dir1/cowrie.json.$srcfileDate $dir1/cowrie.json

    str=message

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "adidas.com" > $dir1/adidas-attacks
    if [[ $(< $dir1/adidas-attacks) == *"$str"* ]]
     then
      echo "Adidas attacks found!"
     else
      echo "No Adidas attacks found!" | rm $dir1/adidas-attacks 2>/dev/null
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "ident.me" > $dir1/identme-attacks
    if [[ $(< $dir1/identme-attacks) == *"$str"* ]]
     then
      echo "Ident.me attacks found!"
     else
      echo "No Ident.me attacks found!" | rm $dir1/identme-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "bestbuy.com" > $dir1/bestbuy-attacks
    if [[ $(< $dir1/bestbuy-attacks) == *"$str"* ]]
     then
      echo "BestBuy attacks found!"
     else
      echo "No BestBuy attacks found!" | rm $dir1/bestbuy-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "mozilla.com" > $dir1/FireFox-attacks
    if [[ $(< $dir1/FireFox-attacks) == *"$str"* ]]
     then
      echo "FireFox attacks found!"
     else
      echo "No FireFox attacks found!" | rm $dir1/FireFox-attacks
     fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "epicgames.com" > $dir1/epicgames-attacks
    if [[ $(< $dir1/epicgames-attacks) == *"$str"* ]]
     then
      echo "Epicgames attacks found!"
     else
      echo "No Epicgames attacks found!" | rm $dir1/epicgames-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "yahoo.com" > $dir1/yahoo-attacks
    if [[ $(< $dir1/yahoo-attacks) == *"$str"* ]]
     then
      echo "Yahoo attacks found!"
     else
      echo "No Yahoo attacks found!" | rm $dir1/yahoo-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "sonicdrivein.com" > $dir1/sonic-attacks
    if [[ $(< $dir1/sonic-attacks) == *"$str"* ]]
     then
      echo "Sonic attacks found!"
     else
      echo "No Sonic attacks found!" | rm $dir1/sonic-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "ttvnw.net" > $dir1/twitch-attacks
    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "twitch.tv" >> $dir1/twitch-attacks
    if [[ $(< $dir1/twitch-attacks) == *"$str"* ]]
     then
      echo "Twitch attacks found!"
     else
      echo "No twitch attacks found!" | rm $dir1/twitch-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "ubi.com" > $dir1/ubi-attacks
    if [[ $(< $dir1/ubi-attacks) == *"$str"* ]]
     then
      echo "Ubi.com attacks found!"
     else
      echo "No Ubi.com attacks found!" | rm $dir1/ubi-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "instagram.com" > $dir1/instagram-attacks
    if [[ $(< $dir1/instagram-attacks) == *"$str"* ]]
     then
      echo "Instagram attacks found!"
     else
      echo "No Instagram attacks found!" | rm $dir1/instagram-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "trycaviar.com" > $dir1/trycaviar-attacks
     if [[ $(< $dir1/trycaviar-attacks) == *"$str"* ]]
     then
      echo "Trycaviar.com attacks found!"
     else
      echo "No trycaviar.com attacks found!" | rm $dir1/trycaviar-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "trycaviar.com" > $dir1/phoneclaim-attacks
    if [[ $(< $dir1/phoneclaim-attacks) == *"$str"* ]]
     then
      echo "Phoneclaim.com attacks found!"
     else
      echo "No Phoneclaim.com attacks found!" | rm $dir1/phoneclaim-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "levelup.com" > $dir1/levelup-attacks
    if [[ $(< $dir1/levelup-attacks) == *"$str"* ]]
     then
      echo "LevelUp attacks found!"
     else
      echo "No LevelUp attacks found!" | rm $dir1/levelup-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "gstatic.com" > $dir1/gstatic-attacks
    if [[ $(< $dir1/gstatic-attacks) == *"$str"* ]]
     then
      echo "GStatic attacks found!"
     else
      echo "No GStatic attacks found!" | rm $dir1/gstatic-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "steampowered.com" > $dir1/steampowered-attacks
    if [[ $(< $dir1/steampowered-attacks) == *"$str"* ]]
     then
      echo "Steampowered attacks found!"
     else
      echo "No Steampowered attacks found!" | rm $dir1/steampowered-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "bitesquad.com" > $dir1/bitesquad-attacks
    if [[ $(< $dir1/bitesquad-attacks) == *"$str"* ]]
     then
      echo "Bitesquad attacks found!"
     else
      echo "No Bitesquad attacks found!" | rm $dir1/bitesquad-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "youtube.com" > $dir1/youtube-attacks
    if [[ $(< $dir1/youtube-attacks) == *"$str"* ]]
     then
      echo "Youtube attacks found!"
     else
      echo "No Youtube attacks found!" | rm $dir1/youtube-attacks
    fi

     cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "google.com" > $dir1/google-attacks
     if [[ $(< $dir1/google-attacks) == *"$str"* ]]
     then
      echo "Google attacks found!"
     else
      echo "No Google attacks found!" | rm $dir1/google-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "pof.com" > $dir1/pof-attacks
    if [[ $(< $dir1/pof-attacks) == *"$str"* ]]
     then
      echo "Plenty of Fish attacks found!"
     else
      echo "No Plenty of Fish attacks found!" | rm $dir1/pof-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "api.ipify.org" > $dir1/ipify-attacks
    if [[ $(< $dir1/ipify-attacks) == *"$str"* ]]
     then
      echo "Ipify attacks found!"
     else
      echo "No Ipify attacks found!" | rm $dir1/ipify-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "googleapis.com" > $dir1/googleapi-attacks
    if [[ $(< $dir1/googleapi-attacks) == *"$str"* ]]
     then
      echo "GoogleAPI attacks found!"
     else
      echo "No GoogleAPI attacks found!" | rm $dir1/googleapi-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "att.net" > $dir1/att-attacks
    if [[ $(< $dir1/att-attacks) == *"$str"* ]]
     then
      echo "AT&T attacks found!"
     else
      echo "No AT&T attacks found!" | rm $dir1/att-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "amazon.com" > $dir1/amazon-attacks
    if [[ $(< $dir1/amazon-attacks) == *"$str"* ]]
     then
      echo "Amazon attacks found!"
     else
      echo "No Amazon attacks found!" | rm $dir1/amazon-attacks
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep "HTTP" > $dir1/HTTP-requests
    if [[ $(< $dir1/HTTP-requests) == *"$str"* ]]
     then
      echo "HTTP requests found!"
     else
      echo "No HTTP requests found!" | rm $dir1/HTTP-requests
    fi

    cat $dir1/cowrie.json | grep "discarded direct-tcp forward request" | grep -v -E "phoneclaim.com|trycaviar.com|ubi.com|HTTP|levelup.com|instagram.com|ttvnw.net|youtube.com|pof.com|ipify.org|googleapis.com|twitch.tv|google.com|att.net|amazon.com|bitesquad.com|steampowered.com|gstatic.com|adidas.com|indent.me|bestbuy.com|mozilla.com|epicgames.com|yahoo.com|sonicdrivein.com" > $dir1/other-attacks
    if [[ $(< $dir1/other-attacks) == *"$str"* ]]
     then
      echo "Other attacks found!"
     else
      echo "No other attacks found!" | rm $dir1/other-attacks
    fi


fileDate=$(date +%m-%d-%Y -d 'yesterday')
dir2=/root/MOS-tpot/Malware-Files/SSH-TCP-Proxy-Attack-Attempts_"$fileDate"

mv $dir1 $dir2

mkdir $dir2/Attack-Data
mv $dir2/* $dir2/Attack-Data 2>/dev/null

printf "\n \n \n"

echo "This part may take a bit. There are a lot of IP related commands being executed."

printf "\n \n \n"

find $dir2/Attack-Data -ls | while read line
  do
  fileName=$(echo $line | awk '{print $11}')
  cat $fileName 2>/dev/null | jq -r '.src_ip, .dst_ip' 2>/dev/null | xargs -n 2
  done > $dir2/src-dst-ip-address

  cat $dir2/src-dst-ip-address | grep -v "null" | sort | uniq > $dir2/sorted-ip-addresses
  rm $dir2/src-dst-ip-address

  input=$(cat $dir2/sorted-ip-addresses)

  while read src_ip dst_ip;
   do
     domain=$(dig +short -x "$src_ip")
     org=$(whois "$dst_ip" | grep -i OrgName | awk 'NR==1{print $2}')
     loc=$(geoiplookup "$src_ip" | awk '{print $5, $6, $7, $8, $9}')
     if [ -n "$domain" ];
      then
       printf "\e[42m\e[30m%sIP Address: $src_ip | %sLocation: $loc | %sTarget: $dst_ip  | %sOrg: $org \e[0m \n" >> $dir2/Active-IPs-wDomain
      else
       printf "\e[45m%sIP Address: $src_ip | %sLocation: $loc | %sTarget: $dst_ip \e[0m  \n" >> $dir2/Active-IPs-woDomain
     fi
     if  [[ $domain == *"connection timed out; no servers could be reached"* ]];
      then
       printf "\e[41m%sIP Address: $src_ip | %sIP Address Not Active \e[0m \n" >> $dir2/Inactive-IPs
     fi
   done <<< "$input"

      cat $dir2/Active-IPs-wDomain | grep -v "Domain: ;; connection timed out; no servers could be reached" | column -ts$'|' | grep -v "172.23.0.2" > $dir2/Sorted-Active-IPs
      cat $dir2/Active-IPs-woDomain | column -ts$'|' | grep -v "172.23.0.2"  >> $dir2/Sorted-Active-IPs
      cat $dir2/Inactive-IPs | column -ts$'|' | grep -v "172.23.0.2"  >> $dir2/Sorted-Active-IPs
      mv $dir2/Sorted-Active-IPs $dir2/IP-details

      mkdir $dir2/IP-Related-Data
      mv $dir2/Inactive-IPs $dir2/IP-Related-Data
      mv $dir2/Active-IPs-woDomain $dir2/IP-Related-Data
      mv $dir2/Active-IPs-wDomain $dir2/IP-Related-Data


mkdir $dir2/Attacker-IP-Information

  GermanyIP=$(sort < $dir2/IP-details | grep -c "Germany")
  echo "Found $GermanyIP attacker IPs from Germany"
  sort < $dir2/IP-details | grep "Germany" > $dir2/Attacker-IP-Information/German-Attacker-Info

  FranceIP=$(sort < $dir2/IP-details | grep -c "France")
  echo "Found $FranceIP attacker IPs from France"
  sort < $dir2/IP-details | grep "France" > $dir2/Attacker-IP-Information/French-Attacker-Info

  USIP=$(sort < $dir2/IP-details | grep -c "United States")
  echo "Found $USIP attacker IPs from the United States"
  sort < $dir2/IP-details | grep "United States" > $dir2/Attacker-IP-Information/US-Attacker-Info

  HKIP=$(sort < $dir2/IP-details | grep -c "Hong Kong")
  echo "Found $HKIP attacker IPs from Hong Kong"
  sort < $dir2/IP-details | grep "Hong Kong" > $dir2/Attacker-IP-Information/HongKong-Attacker-Info

  IrelandIP=$(sort < $dir2/IP-details | grep -c "Ireland")
  echo "Found $IrelandIP attacker IPs from Ireland"
  sort < $dir2/IP-details | grep "Ireland" > $dir2/Attacker-IP-Information/Ireland-Attacker-Info

  ChinaIP=$(sort < $dir2/IP-details | grep -c "China")
  echo "Found $ChinaIP attacker IPs from China"
  sort < $dir2/IP-details | grep "China" > $dir2/Attacker-IP-Information/China-Attacker-Info

  ItalyIP=$(sort < $dir2/IP-details | grep -c "Italy")
  echo "Found $ItalyIP attacker IPs from Italy"
  sort < $dir2/IP-details | grep "Italy" > $dir2/Attacker-IP-Information/Italian-Attacker-Info

  CanadaIP=$(sort < $dir2/IP-details | grep -c "Canada")
  echo "Found $CanadaIP attacker IPs from Canada"
  sort < $dir2/IP-details | grep "Canada" > $dir2/Attacker-IP-Information/Canadian-Attacker-Info

  RUIP=$(sort < $dir2/IP-details | grep -c "Russian Federation")
  echo "Found $RUIP attacker IPs from Russia"
  sort < $dir2/IP-details | grep "Russian Federation" > $dir2/Attacker-IP-Information/Russian-Attacker-Info

  SpainIP=$(sort < $dir2/IP-details | grep -c "Spain")
  echo "Found $SpainIP attacker IPs from Spain"
  sort < $dir2/IP-details | grep "Spain" > $dir2/Attacker-IP-Information/Spanish-Attacker-Info

  BelgiumIP=$(sort < $dir2/IP-details | grep -c "Belgium")
  echo "Found $BelgiumIP attacker IPs from Belgium"
  sort < $dir2/IP-details | grep "Belgium" > $dir2/Attacker-IP-Information/Belgium-Attacker-Info

  TurkeyIP=$(sort < $dir2/IP-details | grep -c "Turkey")
  echo "Found $TurkeyIP attacker IPs from Turkey"
  sort < $dir2/IP-details | grep "Turkey" > $dir2/Attacker-IP-Information/Turkey-Attacker-Info

  SwedenIP=$(sort < $dir2/IP-details | grep -c "Sweden")
  echo "Found $SwedenIP attacker IPs from Sweden"
  sort < $dir2/IP-details | grep "Sweden" > $dir2/Attacker-IP-Information/Swedish-Attacker-Info

  RomaniaIP=$(sort < $dir2/IP-details | grep -c "Romania")
  echo "Found $RomaniaIP attacker IPs from Romania"
  sort < $dir2/IP-details | grep "Romania" > $dir2/Attacker-IP-Information/Romanian-Attacker-Info

  GreeceIP=$(sort < $dir2/IP-details | grep -c "Greece")
  echo "Found $GreeceIP attacker IPs from Greece"
  sort < $dir2/IP-details | grep "Greece" > $dir2/Attacker-IP-Information/Greek-Attacker-Info

  VietnamIP=$(sort < $dir2/IP-details | grep -c "Vietnam")
  echo "Found $VietnamIP attacker IPs from Vietnam"
  sort < $dir2/IP-details | grep "Vietnam" > $dir2/Attacker-IP-Information/Vietnamese-Attacker-Info

  TaiwanIP=$(sort < $dir2/IP-details | grep -c "Taiwan")
  echo "Found $TaiwanIP attacker IPs from Taiwan"
  sort < $dir2/IP-details | grep "Taiwan" > $dir2/Attacker-IP-Information/Taiwan-Attacker-Info

  BrazilIP=$(sort < $dir2/IP-details | grep -c "Brazil")
  echo "Found $BrazilIP attacker IPs from Brazil"
  sort < $dir2/IP-details | grep "Brazil" > $dir2/Attacker-IP-Information/Brazilian-Attacker-Info

  IndiaIP=$(sort < $dir2/IP-details | grep -c "India")
  echo "Found $IndiaIP attacker IPs from India"
  sort < $dir2/IP-details | grep "India" > $dir2/Attacker-IP-Information/Indian-Attacker-Info

  MexicoIP=$(sort < $dir2/IP-details | grep -c "Mexico")
  echo "Found $MexicoIP attacker IPs from Mexico"
  sort < $dir2/IP-details | grep "Mexico" > $dir2/Attacker-IP-Information/Mexican-Attacker-Info

  MacauIP=$(sort < $dir2/IP-details | grep -c "Macau")
  echo "Found $MacauIP attacker IPs from Macau"
  sort < $dir2/IP-details | grep "Macau" > $dir2/Attacker-IP-Information/Macau-Attacker-Info

  JapanIP=$(sort < $dir2/IP-details | grep -c "Japan")
  echo "Found $JapanIP attacker IPs from Japan"
  sort < $dir2/IP-details | grep "Japan" > $dir2/Attacker-IP-Information/Japanese-Attacker-Info

  IndonesiaIP=$(sort < $dir2/IP-details | grep -c "Indonesia")
  echo "Found $IndonesiaIP attacker IPs from Indonesia"
  sort < $dir2/IP-details | grep "Indonesia" > $dir2/Attacker-IP-Information/Indonesian-Attacker-Info

  AfricaIP=$(sort < $dir2/IP-details | grep -c "Africa")
  echo "Found $AfricaIP attacker IPs from somewhere in Africa"
  sort < $dir2/IP-details | grep "Africa" > $dir2/Attacker-IP-Information/African-Attacker-Info

  NCIP=$(sort < $dir2/IP-details | grep -c "New Caledonia")
  echo "Found $NCIP attacker IPs from New Caledonia"
  sort < $dir2/IP-details | grep "New Caledonia" > $dir2/Attacker-IP-Information/NewCaledonia-Attacker-Info

  PolandIP=$(sort < $dir2/IP-details | grep -c "Poland")
  echo "Found $PolandIP attacker IPs from Poland"
  sort < $dir2/IP-details | grep "Poland" > $dir2/Attacker-IP-Information/Polish-Attacker-Info

  EgyptIP=$(sort < $dir2/IP-details | grep -c "Egypt")
  echo "Found $EgyptIP attacker IPs from Egypt"
  sort < $dir2/IP-details | grep "Egypt" > $dir2/Attacker-IP-Information/Egyptian-Attacker-Info


printf "\n \n \n"

echo "To view raw data findings go to directory $dir2/Attack-Data/ "

printf "\n \n \n"

echo "To view source ips and target ip information, go to directory $dir2 and cat the IP-Details file"

