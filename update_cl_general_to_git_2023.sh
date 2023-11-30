#!/bin/bash
####if root password
####echo 'Give mysql password'
####read password

####if root password
####mysqldump  -d -uroot cl_general -p$password > cl_general_blank.sql 
#####if unix plugin , as root 
echo "database:"
read d
mysqldump  -d $d > cl_general_blank_2023.sql 

tnames='
config
dashboard
dementia
examination
host_code
labels
label_group
lis_to_vitros_sample_type
Laboratory
menu_new
menu_view
menu_worklist
route_priority
sample_id_strategy
sample_status
sql
examination_field_specification
table_field_specification
consumable_name
consumable_receipt
view_info_data
'

#####if root password
#####mysqldump  -uroot cl_general $tnames -p$password > "cl_general_data_2023.sql"
#####if unix plugin , as root 
mysqldump  $d $tnames > "cl_general_data_2023.sql"

git add *
git commit -a
git push https://github.com/nishishailesh/cl_general_2023 main
