#! /bin/sh

# Jordi Amela

#instalacio del kibana
# Aquest script s'ha de fer com a administrador

# Importar pagina d'elastic
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

# Creació del repositori del kibana
cat  << EOF  > /etc/yum.repos.d/kibana.repo
[kibana-4.5]
name=Kibana repository for 4.5.x packages
baseurl=http://packages.elastic.co/kibana/4.5/centos
gpgcheck=1
gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch
enabled=1
EOF


# Instal·lació del kibana 


MANAGER=yum
which dnf >/dev/null 2>&1 && MANAGER=dnf
sudo $MANAGER -y install kibana

# Encendre el kibana 
chkconfig --add kibana

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service

systemctl start kibana
systemctl enable kibana
systemctl status kibana
