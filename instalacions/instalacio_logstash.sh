#! /bin/sh
#instalacio del logstash
# S'ha de crear un repositori per poder baixar-ho de la pagina oficial
# Aquest script s'ha de fer com a administrador
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

cat  << EOF  > /etc/yum.repos.d/logstash.repo
[logstash-2.3]
name=Logstash repository for 2.3.x packages
baseurl=http://packages.elastic.co/logstash/2.3/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#ficar lo del ordines que comprova si es 22 o 20 per dnf o yum 

dnf install -y  logstash

systemctl start logstash
systemctl enable logstash
systemctl status logstash

ln -s /opt/logstash/bin/logstash-plugin /bin/logstash-plugin
ln -s /opt/logstash/bin/plugin /bin/plugin_logstash

# provar in situ

logstash -e 'input {stdin{}} output {stdout {} }'
