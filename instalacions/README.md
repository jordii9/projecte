# Guia d'usuari

En aquest directori hi han els procesos d'instalació de forma local dels diferents serveis utilitzats en aquest projecte, és a dir, instalats directament al sistema operatiu.

Per utilitzar aquets scripts és recomanable utilitzar algun dels diferents sistemes operatius de fedora, tot i aixó també és més que provable que amb qualsevol sistema linux funcioni aquesta configuración, tanmateix podría haver-hi algun problema de configuració per aquest motiu és recomanat utilitzar la tecnologia **docker** per aquest projecte.


## Instruccions

1. Dins d'un terminal Linux al directori escollit.

2.  Descarregar el repositori.

	```
		$ git clone https://github.com/jordii9/projecte.git
	```
	
2.  Entrar d'instal·lacions.

	```
		$ cd projecte/instalacios
	```
	
3. En aquest punt estem dins del directori instal·lacions del meu repositori.

5. Per instal·lar qualsevol dels serveis amb el script corresponent.
	Al ser una instal·lació local és mol provable que necesitis permisos d'administrador.
	
	- **Logstash:**

	```
		$ sudo  ./instalacio_logstash.sh
	```	
	
	- **Elasticsearch:**

	```
		$ sudo ./instalacio_elasticsearch.sh 
	```
	
		
	- **Kibana**

	```
		sudo ./instalacio_kibana.sh  
	```
