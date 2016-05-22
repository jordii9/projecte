#! /bin/sh
# Jordi Amela
# script que encen tots els dockers

# Apagar els serveis en el host local per desocupar els ports

systemctl stop logstash
systemctl stop elasticsearch
systemctl stop kibana

# ojo que el logstash esta linkat amb elastic i petara si s'enjega abanns

docker start elasticsearch_cont

docker start logstash_cont

docker start kibana_cont
