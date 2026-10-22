files=`ls /root/backup.new.240 -l`
y="<pre>$files</pre>"
#echo "$x $y"
mysql -h127.0.0.1 -ucluser -pTbsnn@420 email -e "insert into email (\`to\`,subject,content,sent) values('biochemistrygmcs@gmail.com',concat(now(),'::Backup Filelist(from main server)'),'$x $y',0)"
