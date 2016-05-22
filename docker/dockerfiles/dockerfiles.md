# Dockerfile

Els Dockerfiles són scripts que contenen comandes que posteriorment seràn executades amb l'ordre concret del fitxer,
aquesta és una eina bàsica de docker per crear imatges de manera automatitzada i més eficient.

## Definir un dockerfile

Estos archivos siempre comienzan con la definición de una imagen base utilizando el comando FROM. A partir de ahí, el proceso de construcción se inicia y cada siguiente acción tomada forma finalizando con commits (guardando el estado de imagen) en el host.

Aquest fitxers sempre comencen amb la definició d'una imatge ja creada com pot ser una imatge pelada de qualsevol linux o una imatge ja feta d'algun servei ja instalat qe ens interesi.
En el meu cas jo he agafat imatges oficials ja creades amb el servei.

Aquestes imatges es defineixen de la seguent manera:


**FROM imatge:versio**

	
Aquestes imatges s'extreuen directament dels dockers oficials ja compartits en un dockerhub el qual si esta compartit ja es baixat automaticament amb aquesta ordre.



##  Commandes Dockerfiles

- **Add** : Copia un archu desde el host al contenidor.

- **CMD** : Configura comandes por defecte par ser ejecutades o be se li passa la entrada ENTRIPOINT.

- **ENTRYPOINT** : ÉS el punt d'entrada per defecte de la aplicació al contenidor.

- **ENV** : Inicialitza variables d'entorn (por exemple, "clau = valor")

- **EXPOSE** : Obre un o més ports a l'exterior.

- **FROM** : Configura l'imatge base del dockerfile

- **MAINTAINER** : Estableix el autor/propietari del contenidor docker.

- **RUN** : Executa una comanda cambian l'estat del contenidor i així establir una característica nova.

- **USER** : Estableix el usuari per defecte el qual s'executa el contenidor.

- **VOLUMEN** : Monta un directori de la màquina (host) a el contenidor.

- **WORKDIR** : Estableix el directori per defecte el qual s'executaràn les odres CMD.


## Creació d'un archiu Dockerfile

Com que un dockerfile no té format es pot editar el fitxer desde qualsevol editor i d'aquesta manera crear les odres que necesitarem i amb l'ordre que necesitem sense tenir res més en conte.

A continuació crearé un dockerfile d'exemple.

## El Dockerfile

 #Establir l'imatge per d'inici

FROM logstash:2.3

 #Establir autor

MAINTAINER jordi Amela

 #Copia del fitxer de configuració del logstash i un fitxer de logs d'exemples

COPY logstash.conf /etc/logstash/conf.d/logstash.conf
COPY logstash-tutorial-dataset /var/tmp/logstash-tutorial-dataset

 #actualització de la imatge i instal·lació del vim 

RUN apt-get
RUN apt-get -y vim


 #Instal·lacio del plugin elasticsearh

RUN cp /opt/logstash/bin/logstash-plugin /bin/plugin
RUN plugin install logstash-filter-elasticsearch

 #Execucio de la ordre per el container i suplantar la ordre base de la imatge oficial

CMD ["logstash","agent", "-f", "/etc/logstash/conf.d/logstash.conf"]



## Creació del container a partir del dockerfile.

Arrivats a aquest punt ja tenim el dockerfile acabat i volem crear una imatge i un contenidor.
S'ha de crear la imatge, el container i encendre-ho.

Per crear la imatge docker amb la opció de triar el nom de la imatge:

**$ sudo docker build --tag <img> .**



El punt final és el que troba el Dockerfile, sinó està en el directori actiu s'ha de posar la ruta.

Un cop es té la imatge docker s'ha de crear el contenidor:


**$ sudo docker run --name <nom_contenidor> <nom_imatge>**

	
Aquesta commanda és la comanda simple a més podríem:

- Mapejar ports (unió màquina i contenidor) --publishe
- linkar un o més contenidors  --link
- montar un directori --volume
- I altres opcions com crear un container interactiu...

I finalment només caldria encendre'l:


**$ sudo docker start <nom_container>**

	
A més també afegiria dues ordres mol utils per analitzar els contenidors.

En primer lloc per visualitzar totes les característiques del contenidor:


**$ sudo docker inspect <nom_contenidor>**

I per l'altre costat per analitzar els procesos actius del contenidor:
	
**$ sudo docker top <nom_contenidor>**

