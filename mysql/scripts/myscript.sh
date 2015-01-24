cd $1
if ! [ -e tmp ] ;then
  mkdir tmp
fi
chmod 777 tmp

scripts/mysql_install_db --port=3306 --socket=/Applications/BitNami/mysql/tmp/mysql.sock  --datadir=/Applications/BitNami/mysql/data --pid-file=/Applications/BitNami/mysql/data/mysqld.pid > /dev/null

if [ `uname -s` = "SunOS" ]; then
    U=`id|sed -e s/uid=//g -e s/\(.*//g`
else
    U=`id -u`
fi

if [ $U = 0 ]; then
   chown -R root .
   chown -R mysql data
   chgrp -R root .
fi



/Applications/BitNami/mysql/scripts/ctl.sh start mysql > /dev/null
sleep 10
bin/mysql -S /Applications/BitNami/mysql/tmp/mysql.sock -u root -e "UPDATE mysql.user SET Password=PASSWORD('$2') WHERE User='root';"
bin/mysql -S /Applications/BitNami/mysql/tmp/mysql.sock -u root -e "UPDATE mysql.user SET Password=PASSWORD('$3') WHERE User='';"
bin/mysql -S /Applications/BitNami/mysql/tmp/mysql.sock -u root -e "FLUSH PRIVILEGES;"
