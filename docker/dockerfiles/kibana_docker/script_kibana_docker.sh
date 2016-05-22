#! /bin/bash
# Jordi Amela

# Script que crea un contenidor docker del servei kibana

# apagar i borrar containers anteriors
docker stop kibana_cont 2> /dev/null
docker rm kibana_cont 2> /dev/null


# a partir d'un docker file esta crean una imatge
docker build -t "imatge_kibana" . 

# crear un container a partir d'una iamtge docker
docker create \
	--name "kibana_cont"  \
	--link elasticsearch_cont:Elastic \
	--publish 5601:5601 \
	imatge_kibana



# enjegar el container
#docker start kibana_cont


