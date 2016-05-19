#scrip que a partir d'un docker file crea containers
docker stop logstash_cont 

docker rm logstash_cont >> /dev/null

# a partir d'un docker file esta crean una imatge
docker build -t "imatge_logstash" . 

# crear un container a partir d'una iamtge docker
docker create  \
	--name "logstash_cont" \
	--link elasticsearch_cont:Elastic \
	imatge_logstash


# enjegar el container
#docker start logstash_cont


