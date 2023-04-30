#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache 2..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

cd /tmp

echo "Baixando o Site na pasta tmp..."

wget https://github.com/georgebrata/html-templates/archive/refs/heads/master.zip

unzip master.zip

cd html-templates-master

 cp -R * /var/www/html/
