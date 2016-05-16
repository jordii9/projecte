systemctl start logstash
systemctl enable logstash

systemctl start elasticsearch
systemctl enable elasticsearch

systemctl start kibana
systemctl enable kibana

logstash -f /etc/logstash/conf.d/logstash.conf
