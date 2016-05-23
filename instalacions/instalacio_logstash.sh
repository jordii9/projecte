#! /bin/bash

# Jordi Amela
#instalacio del logstash

# Aquest script s'ha de fer com a administrador

# Importar la pagina oficial de elastic
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch


# Fepositori de descarrega
cat  << EOF  > /etc/yum.repos.d/logstash.repo
[logstash-2.3]
name=Logstash repository for 2.3.x packages
baseurl=http://packages.elastic.co/logstash/2.3/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF

#Instal·lació del logstash

MANAGER=yum
which dnf >/dev/null 2>&1 && MANAGER=dnf
sudo $MANAGER -y install logstash



# sol·lucionar possibles problemes de permisos.

chown -R logstash:logstash /etc/logstash.d/
chown -R logstash:logstash /var/log/logstash/
chown -R logstash:logstash /opt/logstash/

# enjegar el servei

systemctl start logstash
systemctl enable logstash
systemctl status logstash

# crear les ordres executables al dir bin

ln -s /opt/logstash/bin/logstash-plugin /bin/logstash-plugin
ln -s /opt/logstash/bin/plugin /bin/plugin_logstash

# provar in situ

#logstash -e 'input {stdin{}} output {stdout {} }'
