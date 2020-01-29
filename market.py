import urllib.request
import json
import sys
import os
import datetime

##########################################Install dependancies#######################################

dataDir = "/root/"

pipcheck = os.system("pip -V > pipcheck.txt")
reqcheck = os.system("pip list | grep -F requests > reqcheck.txt")
datecheck = os.system("pip list | grep -F dateutil > dateutil.txt")

dateversion = "python-dateutil   2.8.1"
reqversion = "requests          2.21.0"
pipversion = "pip 20.0.2 from /usr/local/lib/python3.7/dist-packages/pip (python 3.7)"

with open("pipcheck.txt") as pipCheck:
  if pipversion in pipCheck.read():
   os.system("rm pipcheck.txt")
  else:
   print ("Installing dependancy: pip for Python3")
   os.system("apt-get install python3-pip")
   os.system("pip install --upgrade pip")
   os.system("rm pipcheck.txt")

with open("reqcheck.txt") as reqCheck:
  if reqversion in reqCheck.read():
   os.system("rm reqcheck.txt")
  else:
   print ("Installing dependancy: requests")
   os.system("pip install requests")
   os.system("rm reqcheck.txt")

with open("dateutil.txt") as dateCheck:
 if dateversion in dateCheck.read():
  os.system("rm dateutil.txt")
 else:
  print ("Installing dependancy: python-dateutils")
  os.system("pip install python-dateutils")
  os.system("rm dateutil.txt")

import dateutil
from dateutil import parser
import requests

##########################################Request Data for API call###################################

print ("\n\n\t\tWelcome to the Hunter Stock Market Analysis Tool\n\n\n")

timeSeries = "TIME_SERIES_DAILY_ADJUSTED"

global symbols

symbols = []

n = int(input("How many market symbols would like to watch? (1-20): "))
for i in range(0, n):
   num = i + 1
   symnum = print("\n(",num,") Enter the market symbol would you like to watch?: ", end=" ")
   symbol = input()
   symbols.append(symbol)

###########################################Function to make sure correct symbols selected#############

def get_symbols():
 print ("\n")
 for i in range(0, n):
    num = i + 1
    symnum = print("\n(",num,") Enter the market symbol would you like to watch?: ", end=" ")
    symbol = input()
    symbols.append(symbol)

###########################################Continue getting information################################

print("\nYou chose the following symbols: ", symbols)

strsymbols = ''.join(str(e) for e in symbols)

global correctsym
correctsym = input("\nWere these the correct symbol(s)? (Y/N): ")

while "N" in  correctsym:
 get_symbols()
 correctsym = input("\nWere these the correct symbol(s)? (Y/N): ")

datatype = "json"

apikey = "42G8NEUY7TOY2ITX"

global outputsize

outputsize = input("\nHow much data do you want to pull? |(1) All (2) Last 100 days|: ")

if "1" in outputsize:
 outputsize = "full"
else:
 outputsize = "compact"

askdate = input("\nWould you like to focus on a specific date? (Y/N): ")

global date

if "Y" in askdate:
 print ("\nWhat date would you like to monitor? |Enter Today or DD MMM YYYY: ", end= " ")
 date = input()
 if "Today" or "today" in date:
  date = datetime.date.today()
 else:
  date = datetime.date(date)


##########################################################API Call to get .json#######################################

#response = requests.get("https://www.alphavantage.co/query?function=" + timeSeries + "&symbol=" + strsymbols + "&outputsize=" + outputsize + "&datatype=" + datatype + "&apikey=" + apikey)

#def jprint(obj):
#  text = json.dumps(obj, sort_keys=True, indent=4)
#  print(text)

#jprint(response.json())

#n = 2

#if n > 1:
# var[x] = symbols
# print (var[x])
