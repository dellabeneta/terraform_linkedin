#!/bin/bash
echo " ---> Atualizando repositório 'YUM' e instalando 'amazon-linux-extras'. "
sleep 3
sudo yum update -y
sudo yum install -y amazon-linux-extras

echo " ---> Habilitando e instalando o pacote do 'NGINX'. "
sleep 3
sudo amazon-linux-extras enable nginx1
sudo yum clean metadata && sudo yum install nginx -y
sudo systemctl start nginx && sudo systemctl enable nginx

echo " ---> Habilitando e instalando o pacote do 'PHP'. "
sleep 3
sudo amazon-linux-extras enable php8.0
sudo yum clean metadata && sudo yum install yum install php-cli php-pdo php-fpm php-mysqlnd -y
sudo systemctl start php-fpm && sudo systemctl enable php-fpm

echo " ---> Ajustando permissões para o 'NGINX'. "
sleep 3
sudo groupadd www-data
sudo usermod -a -G nginx ec2-user
sudo systemctl restart nginx

echo " ---> Baixando 'WORDPRESS' e 'wp-config.php' personalizado para conexão ao RDS. "
sleep 3
wget https://wordpress.org/latest.zip && wget https://solvimm-s3-bucket-developer.s3.amazonaws.com/wp-config.php
unzip latest.zip
mv wp-config.php wordpress/
sudo chown -R ec2-user:nginx wordpress && sudo chown -R ec2-user:nginx /usr/share/nginx/html/
mv wordpress/* /usr/share/nginx/html/

echo " ---> Instalação e configuração concluídas com sucesso! "
echo " :) "
sleep 2