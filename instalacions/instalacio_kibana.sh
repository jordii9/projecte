#! /bin/sh
#instalacio del logstash
# S'ha de crear un repositori per poder baixar-ho de la pagina oficial
# Aquest script s'ha de fer com a administrador
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

cat  << EOF  > /etc/yum.repos.d/elasticsearch.repo
[kibana-4.5]
name=Kibana repository for 4.5.x packages
baseurl=http://packages.elastic.co/kibana/4.5/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF


#ficar lo del ordines que comprova si es 22 o 20 per dnf o yum 


dnf install -y  kibana


chkconfig --add kibana

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service

systemctl start kibana
systemctl enable kibana
systemctl status kibana
