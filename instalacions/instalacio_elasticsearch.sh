#! /bin/sh

# Jordi Amela

#instalacio del elasticsearch

# Aquest script s'ha de fer com a administrador

# Importació de la pàgina oficial
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

# Creació del repsitori
cat  << EOF  > /etc/yum.repos.d/elasticsearch.repo
[elasticsearch-2.x]
name=Elasticsearch repository for 2.x packages
baseurl=https://packages.elastic.co/elasticsearch/2.x/centos
gpgcheck=1
gpgkey=https://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#Instal·lació del elasticsearch

MANAGER=yum
which dnf >/dev/null 2>&1 && MANAGER=dnf
sudo $MANAGER -y install elasticsearch

systemctl start elasticsearch
systemctl enable elasticsearch
systemctl status elasticsearch

# enllaços directes per les ordres executables
ln -s /usr/share/elasticsearch/bin/elasticsearch /bin/elasticsearch
ln -s /usr/share/elasticsearch/bin/plugin /bin/plugin_elasticsearch

#instal·lació dels dos plugins
plugin_elasticsearch install mobz/elasticsearch-head 
plugin_elasticsearch install royrusso/elasticsearch-HQ

# Encendre el servei elasticsearch
systemctl start elasticsearch
systemctl enable elasticsearch
systemctl status elasticsearch

