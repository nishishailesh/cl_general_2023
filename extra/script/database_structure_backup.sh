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
#take full backup (except 4 big tables) after renaming old backup (which will delete very old backup)
mv ../data/clg.blank.sql ../data/clg.blank.sql.old
mysqldump -d -h 127.0.0.1 -u$user -p$pass clg > ../data/clg.blank.sql
