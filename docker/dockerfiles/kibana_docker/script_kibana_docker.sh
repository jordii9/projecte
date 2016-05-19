#scrip que a partir d'un docker file crea containers

#borrar si existeic

docker rm kibana_cont


# a partir d'un docker file esta crean una imatge
docker build -t "imatge_kibana" . 

# crear un container a partir d'una iamtge docker
docker create  --name "kibana_cont"  -p 5601:5601 imatge_kibana


# enjegar el container
#docker start kibana_cont


