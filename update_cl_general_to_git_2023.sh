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
record_tables
config
table_field_specification
menu_new
copy_bin_text
route_priority
examination
equipment_record_type
request_id
prototype_data
opd_id
schedule
sample_id_strategy
user
im_message
moving_average
display_examination
equipment
labels
dementia
report
view_info_data
prototype
display_examination_view
super_profile
sample_status
dashboard
ward_id
copy_sample
profile
Quality_manual_section
host_code
lis_to_vitros_sample_type
'

#####if root password
#####mysqldump  -uroot cl_general $tnames -p$password > "cl_general_data_2023.sql"
#####if unix plugin , as root 
mysqldump  $d $tnames > "cl_general_data_2023.sql"

git add *
git commit -a
git push https://github.com/nishishailesh/cl_general_2023 main
