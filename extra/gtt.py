#!/usr/bin/python3
import sys
import fcntl
import logging
import time
import base64
#import matplotlib
# Force matplotlib to not use any Xwindows backend.
#matplotlib.use('Agg')
import matplotlib.pyplot as plt 
import io

#For mysql password
sys.path.append('/var/gmcs_config')

#########Change this if database/password/username changes##########
import astm_var_clg as astm_var
from astm_bidirectional_common import my_sql

def mk_histogram_from_tuple(xy,heading,x_axis,y_axis,axis_range_tuple,peak_data_dict):
  for item in zip(xy[0],xy[1]):
    plt.annotate(item[1],(item[0]+2,item[1]-10),rotation=0,verticalalignment='bottom',)

  plt.plot(xy[0], xy[1]) 
  
  plt.plot((0,max(xy[1])*1.2),(100,100)) 
  plt.plot((0,max(xy[1])*1.2),(140,140)) 
  plt.plot((0,max(xy[1])*1.2),(200,200)) 
  #plt.annotate("140 mg/dL",(max(xy[0])*1.1,140))
  #plt.annotate("100 mg/dL",(max(xy[0])*1.1,100))
  #plt.annotate("200 mg/dL",(max(xy[0])*1.1,200))

  
  plt.xlabel(x_axis) 
  plt.ylabel(y_axis)
  
  #plt.axis(axis_range_tuple) 
  
  plt.xticks([0, 60, 120])
  plt.yticks([0,100, 140, 200])
  plt.xlim(0, max(xy[0])*1.3)  
  plt.ylim(0, max(xy[1])*1.1)  
  plt.title(heading) 
  #plt.show()
  #return
  
  f = io.BytesIO()
  plt.savefig(f, format='png')
  f.seek(0)
  data=f.read()
  f.close()
  plt.close() #otherwise graphs will be overwritten, in next loop
  return data


def save_gtt(sample_id,examination_id,data):
  ms=my_sql()
  con=ms.get_link(astm_var.my_host,astm_var.my_user,astm_var.my_pass,astm_var.my_db)

  prepared_sql_blob='insert into result_blob \
                             (sample_id,examination_id,result,fname) \
                             values \
                             (%s,%s,%s,%s) \
                             ON DUPLICATE KEY UPDATE result=%s, fname=%s'

  fname='gtt_{}_{}.png'.format(sample_id,examination_id)
  data_tpl=(sample_id,examination_id,data,fname,data,fname)
  cur=ms.run_query(prepared_sql_blob,data_tpl)
  ms.close_cursor(cur)
  ms.close_link()


#xy=((0,60,120),(95,250,180))
xy=((int(sys.argv[3]),int(sys.argv[4]),int(sys.argv[5])),(int(sys.argv[6]),int(sys.argv[7]),int(sys.argv[8])))

#plt.plot(xy[0], xy[1])
#plt.show()

heading="Glucose Tolerance Test"
x_axis="Minutes after Glucose load"
y_axis="Glucose mg/dL"
axis_range_tuple=(min(xy[0]),max(xy[0])*1.3,0,max(xy[1])*1.3)

data=mk_histogram_from_tuple(xy,heading,x_axis,y_axis,axis_range_tuple,peak_data_dict=None)
save_gtt(sys.argv[1],sys.argv[2],data)
