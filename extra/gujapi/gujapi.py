#!/usr/bin/python3
import requests
import json
import datetime
import uuid
import json
import logging
import time
import fcntl

logging.basicConfig(filename="/var/log/gujapi/main.log",level=logging.DEBUG)

def send_data(data):
  url = "https://techo.gujarat.gov.in/api/lmis/data"
  current_datetime=datetime.datetime.now(datetime.timezone.utc)
  TIMESTAMP=current_datetime.strftime("%Y-%m-%dT%H:%M:%S+5:30")
    
  payload = json.dumps(data)
  #logging.debug("payload: {}".format(payload))

  headers = {
    'x-client-date-time':TIMESTAMP,
    'accept': 'application/json',
    'Content-Type': 'application/json'
  }

  response = requests.request("POST", url, headers=headers, data=payload)  
  #logging.debug("TIMESTAMP given in JSON: {}".format(TIMESTAMP))
  return response.text

