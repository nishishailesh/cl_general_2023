#!/bin/sh

#run as root so no username password required by mysql
# mysqldump -t to prevent create table (which will overwrite)
cd /root/backup.new.240/script
backup_size=10000

big_four="result result_blob primary_result primary_result_blob abga_id Anemia_id cal_id Comparison_ID fluid_id KIPD_ID M1_ID M2_ID niramaya_id opd_id qc_id request_id stem_id ward_id sample_link"
#big_four="result result_blob primary_result primary_result_blob abga_id Anemia_id cal_id Comparison_ID fluid_id KIPD_ID M1_ID M2_ID niramaya_id opd_id qc_id request_id stem_id ward_id"

last_backed_up_sample_id=720000
take_backup_upto=$backup_size

while [ "${last_backed_up_sample_id}" -lt 840000 ];
do
	for one_table in $big_four;
	do

		FILE="../data/clg.$one_table.$last_backed_up_sample_id.$take_backup_upto.sql"
		if test -e "$FILE"; then
  			echo "File or directory '$FILE' exists."
	  		echo "restoring $one_table with sample_id from $last_backed_up_sample_id to $take_backup_upto"
	 		 mysql clg  < ../data/clg.$one_table.$last_backed_up_sample_id.$take_backup_upto.sql
		fi
	done;
  last_backed_up_sample_id=$((last_backed_up_sample_id + backup_size))
  take_backup_upto=$((last_backed_up_sample_id + backup_size))
done;

