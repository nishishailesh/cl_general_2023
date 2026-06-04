#!/usr/bin/python3
import MySQLdb,logging

class mysql_lis(object):
  def __init__(self,my_host,my_user,my_pass,my_db):
    self.debug=1
    self.get_link(my_host,my_user,my_pass,my_db)
  
  def set_debug_off():
    self.debug=0
     
  def get_link(self,my_host,my_user,my_pass,my_db):
    self.con=MySQLdb.connect(my_host,my_user,my_pass,my_db)
    logging.debug(self.con)
    if(self.con==None):
      if(self.debug==1): logging.debug("Can't connect to database")
    else:
      if(self.debug==1): logging.debug('connected')

  def run_query(self,prepared_sql,data_tpl):
    try:
      self.cur=self.con.cursor()
      self.cur.execute(prepared_sql,data_tpl)
      self.con.commit()
      msg="rows found/altered: {}".format(self.cur.rowcount)
      if(self.debug==1): logging.debug(msg)
    except Exception as ex:
      if(self.debug==1): logging.debug(   'run_query(self,con,prepared_sql,data_tpl):: {}'.format(ex))

  def get_single_row(self):
    return self.cur.fetchone()

  def get_all_rows(self):
    return self.cur.fetchall()
        
  def close_cursor(self):
    self.cur.close()

  def close_link(self):
    self.con.close()
