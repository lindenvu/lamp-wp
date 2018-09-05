yum install httpd -y
service httpd start
systemctl enable httpd.service
yum install mariadb-server mariadb -y
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
yum install php php-mysql -y
systemctl restart httpd.service
sudo vi /var/www/html/info.php
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --reload
mysql -u root -p
yum install php-gd -y
service httpd restart
cd ~
yum install wget -y
wget http://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
yum install rsync -y
rsync -avP ~/wordpress/ /var/www/html/
mkdir /var/www/html/wp-content/uploads
sudo chown -R apache:apache /var/www/html/*
cd /var/www/html
cp wp-config-sample.php wp-config.php
yum install nano -y
nano wp-config.php

