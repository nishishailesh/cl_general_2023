#!/usr/bin/python3

import sys, io
import logging
import time
import zlib
import base64
import struct
import decimal
import base64 

#apt search python3-matplotlib
#apt install python3-matplotlib
import matplotlib.pyplot as plt 
import numpy as np 
import pandas as pd

import datetime

from astm_bidirectional_common import my_sql , file_mgmt, print_to_log

#to ensure that password is not in main sources
#prototype file is as follows

'''
example /var/gmcs_config/astm_var.py
#!/usr/bin/python3.7
my_user='uuu'
my_pass='ppp'
'''

'''
if anything is redirected, last newline is added.
To prevent it, use following
I needed this while outputting relevant data to a file via stdout redirection
echo -n `./astm_file2mysql_general.py` > x
'''

log_filename='/var/log/mylog/all_ma.log'
#logging.basicConfig(filename=log_filename,level=logging.DEBUG)
logging.basicConfig(filename=log_filename,level=logging.INFO)
logging.info(sys.argv)

sys.path.append('/var/gmcs_config')
import astm_var

#print(dir(astm_var))
n_size=sys.argv[1]
o_size=sys.argv[2]
ex_id=sys.argv[3]
mean_mean=None
mean_sd=None
finall=None
finall_with_result=None
#Globals for configuration################
#used by parent class astm_file (so be careful, they are must)

log=1
my_host='127.0.0.1'
my_user=astm_var.my_user
my_pass=astm_var.my_pass
my_db='clg'


if log==0:
  logging.disable(logging.CRITICAL)


def decode_base64_and_inflate( b64string ):
    decoded_data = base64.b64decode( b64string )
    return zlib.decompress( decoded_data , -15)

#not used in this project
def deflate_and_base64_encode( string_val ):
    zlibbed_str = zlib.compress( string_val )
    compressed_string = zlibbed_str[2:-4]
    return base64.b64encode( compressed_string )


def mk_histogram_from_tuple(xy):
  global mean_mean
  global mean_sd
  global n_size
  global finall
  global finall_with_result
  #xy[0] will be used as datgaframe raw lable
  r=pd.DataFrame(xy[1],xy[0])
  m=r.rolling(20).mean()
  md=r.rolling(20).median()
  #ewma=r.ew
  
  rr=r.rename(columns={0:"result"})
  mm=m.rename(columns={0:"avg(20)"})
  mdd=md.rename(columns={0:"median(20)"})
  
  
  #final=rr.join(mm)
  #finall=final.join(mdd)
  
  finall=mm.join(mdd)
  finall_with_result=finall.join(r)
  finall_with_result.columns = ['mean(20)','median(20)','actual result']

  logging.info(finall)

  mean_sd=m.std()
  mean_mean=m.mean()
  logging.info('mean_sd={}:mean_mean={}'.format(mean_sd,mean_mean))
  finall.plot(figsize=(26,8),subplots=False)
  plt.plot([ xy[3],xy[2] ],[mean_mean,mean_mean])
  plt.ticklabel_format(style='plain')

  
  plt.plot([ xy[3],xy[2] ],[mean_mean+mean_sd,mean_mean+mean_sd])
  plt.plot([ xy[3],xy[2] ],[mean_mean-mean_sd,mean_mean-mean_sd])

  plt.plot([ xy[3],xy[2] ],[mean_mean+mean_sd*2,mean_mean+mean_sd*2])
  plt.plot([ xy[3],xy[2] ],[mean_mean-mean_sd*2,mean_mean-mean_sd*2])

  plt.plot([ xy[3],xy[2] ],[mean_mean+mean_sd*3,mean_mean+mean_sd*3])
  plt.plot([ xy[3],xy[2] ],[mean_mean-mean_sd*3,mean_mean-mean_sd*3])

  #plt.yticks (ticks=np.linspace(mean_mean-3*mean_sd,mean_mean+3*mean_sd,7))

  #finall.plot(figsize=(26,17),subplots=True)
  
  f = io.BytesIO()
  plt.savefig(f, format='png')
  f.seek(0)
  data=f.read()
  f.close()
  plt.close()	#otherwise graphs will be overwritten, in next loop
  return data

def get_results(ms,examination_id,n_size,o_size):
  #prepared_sql='select sample_id,result from primary_result where examination_id=%s and result>0 order by sample_id desc limit %s offset %s'
  prepared_sql='select sample_id,result from result where examination_id=%s and result>0 order by sample_id desc limit %s offset %s'
  data_tpl=(examination_id,n_size,o_size)
  logging.info(data_tpl)
  cur=ms.run_query_with_log(prepared_sql,data_tpl)
  logging.info(cur)
  r_tuple=()
  s_tuple=()
  if(cur!=None):
    r=ms.get_single_row(cur)
    highest_sid=r[0]
    logging.info("higest sample id:{} ,{}, {} ".format(highest_sid,n_size,o_size))

    while(r!=None):
      r_tuple=r_tuple+(float(r[1]),)
      #s_tuple=s_tuple+(r[0]-highest_sid,)
      s_tuple=s_tuple+(r[0],)
      r=ms.get_single_row(cur)
      if(r!=None):
        min_sid=r[0]

  return s_tuple,r_tuple,highest_sid,min_sid

ms=my_sql()
ms.get_link(astm_var.my_host,astm_var.my_user,astm_var.my_pass,astm_var.my_db)

#examination_id=5031
examination_id=sys.argv[3]
x,y,h,m=get_results(ms,examination_id,int(n_size),int(o_size))
logging.info((x,y,h,m))
data=mk_histogram_from_tuple((x,y,h,m))

encoded=base64.b64encode(bytes(data))

output=b''
output=output+b"<h4>Examination ID: "+bytes(   str(examination_id).encode('UTF-8')  )+b"</h4>"
output=output+b"<img width=1200 src='data:image/png;base64,"+ encoded +b"'/>"
output=output+b"<h4>mean of mean: "+bytes(str(round(mean_mean[0],2)).encode('UTF-8')) + b"<br>sd of mean:"+bytes(str(round(mean_sd[0],2)).encode('UTF-8'))+b"</h4>"
output=output+b"<h4>min sample id: "+ bytes(str(m).encode('UTF-8')) + b"<br>max Sample ID:"+bytes(str(h).encode('UTF-8'))+b"</h4>"
output=output+b"<h3>All data points, in reverse order</h3>"
#output=output+b"<pre>"+bytes( str(finall.head(100).to_string()).encode('UTF-8'))
output=output+b"<pre>"+bytes( str(finall_with_result.to_string()).encode('UTF-8'))

sys.stdout.buffer.write(output)
