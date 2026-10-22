-----------Explanation of scripts-----------------
-rwxr-xr-x 1 root root 1184 Aug  6 00:52 big_four_backup.sh
	Takes backup of 4 main tables without "create table ...."
		otherwise blant table will be created and data will be overwritten
	increase value of last_backed_up_sample_id.txt
		if backup has no error
		and
		max(sample_id) is greater than last backed up id
		Effect: till backup size is excedeed, last backup will be overwritten
	Run this file every 30 to 60 min
	used sequentially to restore data

-rwxr-xr-x 1 root root  554 Aug  6 00:56 database_structure_backup.sh
	Takes blank database 
	table definition is backed up without data
	used first to restore data
	Run this file every week

-rwxr-xr-x 1 root root  845 Aug  5 19:07 full_backup.sh
	Takes full backup execept 4 big tables
	Run this file every week

-rw-r--r-- 1 root root    6 Aug  6 00:54 last_backed_up_sample_id.txt
	Store last id backed up
	changed only when backup_size data is taken


-rw-r--r-- 1 root root    0 Aug  6 00:58 readme.txt
	Virus file


Example data:
../data:
total 723672
-rw-r--r-- 1 root root     35173 Aug  6 00:56 clg.blank.sql
-rw-r--r-- 1 root root     35173 Aug  6 00:56 clg.blank.sql.old
-rw-r--r-- 1 root root  83847837 Aug  5 19:08 clg.full.sql
-rw-r--r-- 1 root root  83847750 Aug  5 19:08 clg.full.sql.old
-rw-r--r-- 1 root root   2251373 Aug  6 00:53 clg.primary_result.0.10000.sql
-rw-r--r-- 1 root root   2647235 Aug  6 00:54 clg.primary_result.10000.20000.sql
-rw-r--r-- 1 root root    624822 Aug  6 00:53 clg.primary_result_blob.0.10000.sql
-rw-r--r-- 1 root root    314067 Aug  6 00:54 clg.primary_result_blob.10000.20000.sql
-rw-r--r-- 1 root root   9686247 Aug  6 00:53 clg.result.0.10000.sql
-rw-r--r-- 1 root root  11879576 Aug  6 00:54 clg.result.10000.20000.sql
-rw-r--r-- 1 root root 545031691 Aug  6 00:53 clg.result_blob.0.10000.sql
-rw-r--r-- 1 root root    808834 Aug  6 00:54 clg.result_blob.10000.20000.sql
