#!/bin/bash

echo "Atualizando servidor"
apt-get update
apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando projeto e colocando no servidor web"
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Concluído"