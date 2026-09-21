#!/usr/bin/python3
import requests
import json
import datetime, sys
import uuid
import json
import logging
import time
import fcntl
import gujapi

from mysql_lis import mysql_lis
sys.path.append('/var/gmcs_config')
import astm_var_clg as astm_var
logging.basicConfig(filename="/var/log/gujapi/main.log",level=logging.DEBUG)

url = "https://techo.gujarat.gov.in/api/lmis/data"


'''
plan:
a table with sample_id added when released
when data sent by api, the id is removed
'''


def get_data(sample_id):
  ms=mysql_lis('127.0.0.1',astm_var.my_user,astm_var.my_pass,'clg')
  prepared_sql='select result.examination_id,result.result, examination.name,examination.display_help,accr_status from result,examination where sample_id=%s and result.examination_id=examination.examination_id'
  data_tpl=(sample_id,)
  #logging.debug(data_tpl)
  ms.run_query(prepared_sql,data_tpl)
  #logging.debug(prepared_sql)
  #logging.debug(data_tpl)
  #logging.debug("cur:{}".format(ms.cur))
  r=None
  if(ms.cur!=None):
    logging.debug("cur is not None")
    r=ms.get_all_rows()
  else:
    logging.debug("cur is None")
  return r

sample_id=sys.argv[1]
r=get_data(sample_id)
ex_ids= [each_data[0] for each_data in r]
ex_res= [each_data[1] for each_data in r]
ex_name=[each_data[2] for each_data in r]
ex_spec=[each_data[3] for each_data in r]
ex_accr=[each_data[4] for each_data in r]

id_res=dict(zip(ex_ids,ex_res))
id_name=dict(zip(ex_ids,ex_name))
id_spec=dict(zip(ex_ids,ex_spec))
id_accr=dict(zip(ex_ids,ex_accr))

#logging.debug("sample data: {}".format(r))

hospitalId=24022080
patientId=id_res.get(1001) or 'NA'
patientName=id_res.get(1002) or 'NA'
ageYears=id_res.get(1007) or 0
ageDays=id_res.get(1021) or 0
gender=id_res.get(1008) or 'NA'
sampleLocation=id_res.get(1006) or 'NA'
if(sampleLocation!='OPD'):
  isIndoor="Yes"
else:
  isIndoor="No"
sampleId=sample_id
current_datetime=datetime.datetime.now()
sampleDateTime=id_res.get(10003) or current_datetime.strftime("%Y-%m-%dT%H:%M:%S")
Sample_Collection_DateTime=id_res.get(10002) or current_datetime.strftime("%Y-%m-%dT%H:%M:%S") 
Container=id_res.get(1000) or 'NA' 
Sample_Material=id_res.get(1000) or 'NA' 
resultDateTime=id_res.get(10008) or id_res.get(10010) or 'NA'


for key, value in id_res.items():
  if(id_accr[key]!='yes'):
    continue
  testId=key
  testName=id_name[key]
  logging.debug("name: {}".format(testName))
  resultValue=value
  
  try:
    helpp=id_spec[key].split()
    if(len(helpp)>0):
      unit=helpp[0]
    else:
      unit='NA'
  except Exception as ex:
    unit='NA'
    
  data={"hospitalId":hospitalId,
  "patientId":patientId,
  "patientName":patientName,
  "ageYears":ageYears,
  "ageDays":ageDays,
  "gender":gender,
  "sampleLocation":sampleLocation,
  "isIndoor":isIndoor,
  "sampleId":sampleId,
  "sampleDateTime":sampleDateTime,
  "sampleParameters":"Sample Collection DateTime:{}^Sample Received DateTime:{}^Container:{}^Sample Material:{}".format(Sample_Collection_DateTime,sampleDateTime,Container,Sample_Material),
  "testId":testId,
  "testName":testName,
  "parameterId":testId,
  "parameterName":testName,
  "resultValue":resultValue,
  "unit":unit,
  "resultDateTime":resultDateTime
  }
  #logging.debug("data: {}".format(data))

  text=gujapi.send_data(data)
  logging.debug("response.text: {}".format(text))
