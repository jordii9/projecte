# Dockerfile
## Guia d'usuari

Aquest és el directori del dockerfile.

En aquest directori hi trobaràs:

- Documentació de com crear un dockerfile.

- Ordres principals del docker per crear aquests containers.

- Ordres de control per comprovar els containers creats.

- Dockerfiles creats per els 3 serveis diferents.

- Scripts automatizats per creat  els containers i encendrels de forma ordenada amb les propietats i característiques de casdaun.


## Instruccions

1. Dins d'un terminal Linux al directori escollit.

2. Descarregar el repositori.

	```
		$ git clone https://github.com/jordii9/projecte.git
	```
	
3.  Entrar al captures.

	```
		$ cd projecte/docker/dockerfiles
	```
	
4. Dins dels directoris següents hi ha els scripts i informació particular de cadascun:
 
	- elasticsearch_docker
	- kibana_docker
	- logstash_docker 


5. Per executar el script que genera els contenidors docker automaticament

	```
		$ <sudo> ./script_docker.sh 
	```
6. Per executar el script que encenen els contenidors docker automaticament


	```
		$ <sudo> ./start_cont.sh
	```
