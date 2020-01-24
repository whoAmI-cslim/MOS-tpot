#!/bin/bash

    mkdir -p /root/MOS-tpot/cowrie-logs/ 2> /dev/null
    cp /data/cowrie/log/cowrie.json.2020-01-23 /root/MOS-tpot/cowrie-logs/

#    gzip -d /root/MOS-tpot/cowrie-logs/cowrie.json.1.gz
    mv /root/MOS-tpot/cowrie-logs/cowrie.json.2020-01-23 /root/MOS-tpot//cowrie-logs/cowrie.json
#    chmod +x /root/MOS-tpot/cowrie-logs/cowrie.json

    str=message
    cat /root/MOS-tpot/cowrie-logs/cowrie.json | grep "discarded direct-tcp forward request" | grep -E -o '(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' > /root/MOS-tpot/cowrie-logs/ip-addresses
    cat /root/MOS-tpot/cowrie-logs/ip-addresses | sort | uniq > /root/MOS-tpot/cowrie-logs/sorted-ip-addresses
    rm /root/MOS-tpot/cowrie-logs/ip-addresses

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


