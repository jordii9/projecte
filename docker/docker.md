# Docker

## Documentació bàsica

El docker és una tecnologia que a dia de avui s'esta imposant i sutilitza cada dia més.
I simplement consisteix en a partir d'una imatge, sigui la que sigui, la idea és que funcioni independentment del host o màquina i pugi funcionar sense cap tipus de problema de compatibilitat, sense necessitat d'instalació de serveis dins del host i amb total comoditat.

Aquestes imatges s'injecten per així dir-ho dins d'un contenidor que permet encendre'l i manipular-lo.

A més també és possible tenir nombrosos contaniners treballan i executant-se a la vegada, la qual cosa permet tenir nombrosos serveis o un de sol executant-se a la vegada oferint així un ventall de possibilitats i poder aprofitar millor els recursos.
També cal esmentar la facilitat de vincular-se i treballar de forma associativa entre contenidors docker.

Un exemple mol senzill i mol gràfic és la utilització de docker en el meu projecte.
He utilitzat un contenidor docker per cada servidor per tant he utilitzat tres dockers diferents linkats (connectats entre si) i funcionan junts.
Cada contenidor amb un únic servei amb una funcionalitat totalment diferent.

Un altre avantatge que té docker és associar-se i poder treballar de forma local amb el host tenin el contenidor corrent.
Un exemple seria instal·lar una eina gràfica dins del contenidor i obrir els ports i mappejar-lo amb la màquina local i d'aquesta manera és més eficaç i còmode la visualització interna del contenidor.
A més també és pot montar elements del host al container.

## Instalació del docker

Amb un simple:

**yum install -y docker-io**
 

Tot i aixó, pot ser que es descarregui una versió desfasada del docker.
Per comprovar la versió s'utilitza:

**docker version**

Si es descarrega una vesió antiga també es pot descarreguar la versió més actualtzada del docker amb un wget directament de la pagina oficial del docker.



## Creació de containers

Hi ha dues maneres de crear un container a partir d'una imatge o bé a partir d'un dockerfile.

- La creació d'un container a partir d'una imatge ja predefinida només ens serveix si estem segurs que aquesta imatge ens serveix o volem modificar-lo directament amb calent de manera interactiva.
- A partir d'un dockerfile consta de crear un fitxer amb les comandes per crear una imatge personalitzada amb les propietats desitjades.

A partir es crea el container i es pot encendre en 'background' (primer plà) o que corri en 'forground' (segon plà).
Aquesta documentació l'explicarè dins del directori dockerfile.

## DockerHub

A més docker també ofereix un sistema de repositoris publics on qualsevol que ho desiji pot fer-se un usuari i poder pujar i sobretot baixar-se altres imatges.

- Per connectar-se desde el terminal amb l'usuari docker:
	
	```
		docker login
	```
	
- Per pujar una imatge creada dins del dockerhub:

	```
		docker push <imatge>
	```
	
- Per baixar-se una imatge:
	
	```
		docker pull <usuari>/<imatge>
	```
