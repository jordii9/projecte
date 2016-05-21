####################################################
#                                                  #
#                                                  #
####################################################

# Apaga i borra els containers ja existens (si hi són!).

docker stop logstash_cont 2> /dev/null
docker rm logstash_cont 2> /dev/null

docker stop elasticsearch_cont 2> /dev/null
docker rm elasticsearch_cont 2> /dev/null

docker stop kibana_cont 2> /dev/null
docker rm kibana_cont 2> /dev/null




# a partir d'un docker file esta crean una imatge
docker build --tag "imatge_logstash" logstash_docker 

docker build --tag "imatge_elasticsearch" elasticsearch_docker

docker build --tag "imatge_kibana" kibana_docker


# crear un container a partir d'una iamtge docker

docker create \
	--name "elasticsearch_cont" \
	--publish 9200:9200 \
	imatge_elasticsearch 

docker create  \
        --name "logstash_cont" \
	--volume "/var/log:/var/log" \
        --link elasticsearch_cont:Elastic \
        imatge_logstash

docker create \
	 --name "kibana_cont"  \
	--link elasticsearch_cont:Elastic \
	--publish 5601:5601 \
	imatge_kibana

