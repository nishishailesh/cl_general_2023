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

url = "https://techo.gujarat.gov.in/api/lmis/data"

'''
TYPE: POST
URL: https://techo.gujarat.gov.in/api/lmis/data
PARAMETER: x-client-date-time  (format: 2025-08-30T22:32:17+05:30)

example:

{"hospitalId":11715,"patientId":"20260150085","patientName":"AFRINBANU SHEIKH","ageYears":19,"ageDays":0,"gender":"F","sampleLocation":"1200 Bed OPD","isIndoor":"No","sampleId":"1104264100","sampleDateTime":"2026-04-11T12:00","sampleParameters":"Sample Collection DateTime:11-Apr-2026 12:00^Sample Received DateTime:11-Apr-2026 12:00^Container:Flouride Vacuette^Sample Material:Plasma","testId":646,"testName":"Post Prandial Plasma Glucose","parameterId":132,"parameterName":"Post Prandial (2 Hr) Plasma Glucose","resultValue":"60","unit":"mg/dL","resultDateTime":"2026-04-11T18:10"}


{"hospitalId":11715,
"patientId":"20260150085",
"patientName":"AFRINBANU SHEIKH",
"ageYears":19,
"ageDays":0,
"gender":"F",
"sampleLocation":"1200 Bed OPD",
"isIndoor":"No",
"sampleId":"1104264100",
"sampleDateTime":"2026-04-11T12:00",
"sampleParameters":"Sample Collection DateTime:11-Apr-2026 12:00^Sample Received DateTime:11-Apr-2026 12:00^Container:Flouride Vacuette^Sample Material:Plasma",
"testId":646,"testName":"Post Prandial Plasma Glucose",
"parameterId":132,
"parameterName":"Post Prandial (2 Hr) Plasma Glucose",
"resultValue":"60",
"unit":"mg/dL",
"resultDateTime":"2026-04-11T18:10"
}


'''
data={"hospitalId":24022080,
"patientId":"20260470085",
"patientName":"AFRINBANU SHEIKH",
"ageYears":"19",
"ageDays":"0",
"gender":"F",
"sampleLocation":"1200 Bed OPD",
"isIndoor":"No",
"sampleId":"1104264100",
"sampleDateTime":"2026-04-11T12:00",
"sampleParameters":"Sample Collection DateTime:11-Apr-2026 12:00^Sample Received DateTime:11-Apr-2026 12:00^Container:Flouride Vacuette^Sample Material:Plasma",
"testId":"646",
"testName":"Post Prandial Plasma Glucose",
"parameterId":"132",
"parameterName":"Post Prandial (2 Hr) Plasma Glucose",
"resultValue":"60",
"unit":"mg/dL",
"resultDateTime":"2026-04-11T18:10"
}

logging.debug("data: {}".format(data))

def send_data(data):
  current_datetime=datetime.datetime.now(datetime.timezone.utc)
  TIMESTAMP=current_datetime.strftime("%Y-%m-%dT%H:%M:%S+5:30")
    
  payload = json.dumps(data)
  logging.debug("payload: {}".format(payload))

  headers = {
    'x-client-date-time':TIMESTAMP,
    'accept': 'application/json',
    'Content-Type': 'application/json'
  }

  response = requests.request("POST", url, headers=headers, data=payload)  
  logging.debug("TIMESTAMP given in JSON: {}".format(TIMESTAMP))
  return response.text


text=send_data(data)
logging.debug("response.text: {}".format(text))
