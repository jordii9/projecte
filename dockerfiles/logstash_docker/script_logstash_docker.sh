#scrip que a partir d'un docker file crea containers


# a partir d'un docker file esta crean una imatge
docker build -t "imatge_logstash" . 

# crear un container a partir d'una iamtge docker
docker create  --name "logstash_cont" imatge_logstash


# enjegar el container
docker start logstash_cont


