# Dockerfile kibana
## Guia d'usuari

Aquest és el directori del kibana de docker, tot i que el directori pare té el script global per el funcionament complert aquí està de forma individualitzada i conté els fitxers de configuració necessaris per la creació de la imatge. 
També hi ha Obviament el Dockerfile pero també té el fitxer de configuració a més d'un fitxer de logs d'exemple.

## Instruccions

1. Dins d'un terminal Linux al directori escollit.

2. Descarregar el repositori.

	```
		$ git clone https://github.com/jordii9/projecte.git
	```
	
3.  Entrar al directori del kibana.

	```
		$ cd projecte/docker/dockerfiles/kibana_docker
	```
4. Executar el script que crea el contenidor docker. 
	```
		$ sudo ./script_kibana_docker.sh
	```
