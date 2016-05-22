#! /bin/bash
# Jordi Amela

# Script que crea un contenidor docker del servei logstash


# apagar i borrar containers anteriors
docker stop logstash_cont 2> /dev/null
docker rm logstash_cont 2> /dev/null



# a partir d'un dockerfile esta crean una imatge.
docker build --tag "imatge_logstash" logstash_docker 

# crear el contenidor docker a partir de la imatge.
docker create  \
        --name "logstash_cont" \
		--volume "/var/log:/var/log" \
        --link elasticsearch_cont:Elastic \
        imatge_logstash

# enjegar el container
#docker start logstash_cont


