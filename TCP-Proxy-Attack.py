import os
import time
import datetime
from datetime import timedelta
from subprocess import call
import json
import sys
from urllib import urlopen
import locale
import socket

################################## copy .json file & create dir ###################################

#os.environ["PYTHONIOENCODING"] = "utf-8"

reload(sys)
sys.setdefaultencoding('utf8')

d = timedelta(days=1)
today = datetime.date.today()
yesterday = (today - d)

timestr = yesterday.strftime("%Y-%m-%d")

TCPdata = ['cowrie.json.' + timestr]

for filename in TCPdata:
 os.path.join('/data/cowrie/log', filename)

newDir = 'cowrie-logs-' + timestr

newDir2 = str(os.path.join('/root/MOS-tpot', newDir))

mkDir = "mkdir " + newDir2

os.system(mkDir + " 2>/dev/null")

dataDir = str(os.path.join('/data/cowrie/log', filename))

cp = "cp " + dataDir + " " + newDir2

os.system(cp)

os.chdir(newDir2)

################################## read and reorganize .json file ##################################

data = []

datafile = os.path.join(newDir2, filename)

with open(datafile) as f:
 for line in f:
  data.append(json.loads(line))

#print data [1] ["message"]

################################## remove deuplicates values from .json file #######################

def remove_duplicates(seq, idfun=None):
  if idfun is None:
    def idfun(x): return x
  seen = {}
  result = []
  for item in seq:
      marker = idfun(item)
      if marker in seen: continue
      seen[marker] = 1
      result.append(item)
  return result

################################## get IP location info from .json file ############################

def get_ip_location(ip):

    url = 'http://ipinfo.io/'+ip+'/json'
    response = urlopen(url)
    data = json.load(response)

    city = data['city']
    country=data['country']

    return country, city

################################## create data list of prev info from .json file ###################

def get_lists(json_data, key):
    full_list = ""
    for x in range(0, len(json_data)):
        try:
            full_list += str(data[x] [key]) + "\n"
        except:
            pass
    deduped_list = remove_duplicates(full_list.split())
    #if (key == "src_ip"):
    #   deduped_list.sort(key=lambda s: map(int, s.split('.')))

    return full_list, deduped_list

################################ Get records ########################## ############################

def get_records(full_list, deduped_list):
    count_dict = {}
    for item in deduped_list:
        count_dict[item] = full_list.count(item)
    records = sorted(count_dict, key=count_dict.get, reverse=True)[:30]

    return records, count_dict

################################ Get Domains of Target IPs used in attacks ############################

#def get_domain(ip):
#   for s in ip:
#    domain = socket.getaddrinfo(s, 0)

#   return domain


################################ Get List of Source IPs used in attacks ############################

src_ip_list, deduped_src_ip_list = get_lists(data, "src_ip")
dst_ip_list, deduped_dst_ip_list = get_lists(data, "dst_ip")
srcips, src_ip_freq_dict = get_records(src_ip_list, deduped_src_ip_list)
dstips, dst_ip_freq_dict = get_records(dst_ip_list, deduped_dst_ip_list)


################################ Print Data #######################################################

#print src_ip_freq_dict
#print type(srcips)
t1 = zip(srcips, dstips)

print("\n\n\t\tCowrie TCP Attack Analysis\n\n")
print("Total unique attacker IPs: {}\n").format(len(deduped_src_ip_list))
print("Total unique victim IPs: {}\n").format(len(deduped_dst_ip_list))
print("Attackers by IP:\n")
print("\tIP\t\tConnections\tCountry\tCity\t\tTarget\t\tDomain")
for x, i in t1:
   print '\t{}\t{}'.format(x, src_ip_freq_dict[x]),
   country, city = get_ip_location(x)
   print '\t\t{}\t{}'.format(country, city),
#   domain = get_domain(i)
   print("\t{}\t{}\n").format(i, "")
