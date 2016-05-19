#scrip que a partir d'un docker file crea containers


# a partir d'un docker file esta crean una imatge
docker build --tag "imatge_elasticsearch" . 

# crear un container a partir d'una iamtge docker
docker create  \
	--name "elasticsearch_cont" \
	--port 9200:9200 \
	imatge_elasticsearch 


# enjegar el container
#docker start elasticsearch_cont


