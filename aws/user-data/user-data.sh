#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd
cd /var/www/html
echo "<html> <h1> Hola estudiantes, bienvenidos a la página </h1> </html>" > index.html
