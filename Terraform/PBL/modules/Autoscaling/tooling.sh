# #!/bin/bash
# mkdir /var/www/
# sudo mount -t efs -o tls,accesspoint=fsap-0b5f0692d2254a98f fs-04298381da3ef5d19:/  /var/www/
# yum install -y httpd 
# systemctl start httpd
# systemctl enable httpd
# yum module reset php -y
# yum module enable php:remi-7.4 -y
# yum install -y php php-common php-mbstring php-opcache php-intl php-xml php-gd php-curl php-mysqlnd php-fpm php-json
# systemctl start php-fpm
# systemctl enable php-fpm
# git clone https://github.com/Ellawangari/tooling.git
# mkdir /var/www/html
# cp -R /tooling/html/*  /var/www/html/
# cd /tooling
# mysql -h prj15-db.ct2hwew9plmy.us-east-1.rds.amazonaws.com -u admin -p toolingdb < tooling-db.sql
# cd /var/www/html/
# touch healthstatus
# sed -i "s/$db = mysqli_connect('mysql.tooling.svc.cluster.local', 'admin', 'admin', 'tooling');/$db = mysqli_connect('prj15-db.ct2hwew9plmy.us-east-1.rds.amazonaws.com', 'admin', 'admin12345', 'toolingdb');/g" functions.php
# chcon -t httpd_sys_rw_content_t /var/www/html/ -R
# systemctl restart httpd