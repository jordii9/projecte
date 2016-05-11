#! /bin/sh
#instalacio del logstash
# S'ha de crear un repositori per poder baixar-ho de la pagina oficial
# Aquest script s'ha de fer com a administrador
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

cat  << EOF  > /etc/yum.repos.d/elasticsearch.repo
[elasticsearch-2.x]
name=Elasticsearch repository for 2.x packages
baseurl=https://packages.elastic.co/elasticsearch/2.x/centos
gpgcheck=1
gpgkey=https://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#ficar lo del ordines que comprova si es 22 o 20 per dnf o yum 


dnf install -y  elasticsearch

systemctl start elasticsearch
systemctl enable elasticsearch
systemctl status elasticsearch

# enllaços directes per les ordres executables
ln -s /opt/logstash/bin/elasticsearch /bin/elasticsearch
ln -s /opt/logstash/bin/plugin /bin/plugin_elasticsearch

#instalació dels dos plugins
plugin install mobz/elasticsearch-head 
plugin install royrusso/elasticsearch-HQ
