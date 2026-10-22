#!/bin/sh

#######preparation######
#there will be a directory with two subdirectory 
#1) script
#2) data
#
#all shell scripts will be in script
#when these scripts are run, it will modify/add/delete ../data
########################

#keep user name password at single place for use at other places
user='cluser'
pass='Tbsnn@420'

cd /root/backup.new.240/script

#delete temporary data
mysql -h 127.0.0.1 -u$user -p$pass clg -e "delete from upload_data"
mysql -h 127.0.0.1 -u$user -p$pass clg -e "delete from email where sent=1"

#take full backup (except 4 big tables) after renaming old backup (which will delete very old backup)
mv ../data/clg.full.sql ../data/clg.full.sql.old
mysqldump -h 127.0.0.1 -u$user -p$pass clg --ignore-table=clg.primary_result\
 --ignore-table=clg.primary_result_blob\
 --ignore-table=clg.result\
 --ignore-table=clg.abga_id\
 --ignore-table=clg.Anemia_id\
 --ignore-table=clg.cal_id\
 --ignore-table=clg.Comparison_ID\
 --ignore-table=clg.fluid_id\
 --ignore-table=clg.KIPD_ID\
 --ignore-table=clg.M1_ID\
 --ignore-table=clg.M2_ID\
 --ignore-table=clg.niramaya_id\
 --ignore-table=clg.opd_id\
 --ignore-table=clg.qc_id\
 --ignore-table=clg.request_id\
 --ignore-table=clg.stem_id\
 --ignore-table=clg.ward_id\
 --ignore-table=clg.sample_link\
 --ignore-table=clg.result_blob > ../data/clg.full.sql
