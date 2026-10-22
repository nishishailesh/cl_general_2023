#!/bin/sh

#run as root so no username password required by mysql
# mysqldump -t to prevent create table (which will overwrite)
cd /root/backup.new.240/script
backup_size=10000
last_backed_up_sample_id=`cat last_backed_up_sample_id.txt`
echo "last backed up sample_id:$last_backed_up_sample_id"
last_sample_id=`mysql -ss -ucluser -pTbsnn@420 clg -e "select max(sample_id) from sample_link"`
echo "last sample_id:$last_sample_id"

take_backup_upto=$((last_backed_up_sample_id + backup_size))
echo "Take backup upto: $take_backup_upto"

final_return_value=0

big_four="result result_blob primary_result primary_result_blob abga_id Anemia_id cal_id Comparison_ID fluid_id KIPD_ID M1_ID M2_ID niramaya_id opd_id qc_id request_id stem_id ward_id sample_link"
  mysql -h 127.0.0.1 -u cluser -pTbsnn@420 clg -e "delete from upload_data"
  mysql -h 127.0.0.1 -u cluser -pTbsnn@420 clg -e "delete from email where sent=1"
for one_table in $big_four;
do
  #echo $one_table
  echo "backup $one_table with sample_id from $last_backed_up_sample_id to $take_backup_upto"
  mysqldump --replace -t clg $one_table  --where "sample_id between  $last_backed_up_sample_id and $take_backup_upto" > ../data/clg.$one_table.$last_backed_up_sample_id.$take_backup_upto.sql
  final_return_value=$((final_return_value + $?))
done;

echo $final_return_value

if [ "$last_sample_id" -gt "$take_backup_upto" ];
then
	if [ "$final_return_value" -eq 0 ];
	then
		  echo "no error"
		  echo $take_backup_upto > last_backed_up_sample_id.txt
	fi;
fi;
