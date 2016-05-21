# Centralització de logs JSON en BBDD i post-processat. 

*Projecte ASIX 2016*

**Jordi Amela Fuentes**


![elk](https://gssachdeva.files.wordpress.com/2014/08/file-logstash-es-kibana.png)


## ELK

El anomenat *"ELK"* (Elasticsearch logstash i kibana ) és un conjunt de serveis que la seva funció és processar logs de diferentes fonts i visualitzar-los i monitoritzar-los de manera centralitzada.

Cada servei té una funció especifica per aconseguir aquest objectiu, tot i aixó també hi ha altres serveis que fan aquesta funció.

## logstash

Més concretament, el **logstash** el que fa és rebre una entrada (input) que normalment serà un o més fitxers els processa (fa un filtrat) i genera una sortida (un output) que en aquest cas esta redirigida al **elasticsearch**

## Elasticsearch

És la base de dades en el qual el logstash emet tots els logs procesats i els desa a el elasticsearch en forma d'index.

## Kibana

I finalment el kibana recull aquests index i els mostra gràficament amb gràfiques amb temps real o simplement mostra cada log amb el seu atribut. 


## Docker

A més de crear un funcionament de tot el conjunt dels serveis l'altre objectiu principal és crear-los amb contenidors docker i d'aquesta manera tenir una configuració agena al servidor.

## Dockerfiles

Aquets contenidors docker es crearàn de manera automatizada a partir dockerfiles els quals estàn configurats per el seu correcte funcionament.

## Automatització

Tot aquest projecte està orientat amb crear els sistemes ja esmentats pero de manera totalment automatizada per poder utilitzar-ho comodament.
Aquests scripts estàn creats amb python o en bash.

<img src="https://3.bp.blogspot.com/-tI8Skq6iX4A/Vy_7_2IeWNI/AAAAAAAAABc/0FXhY1jMF_YSgeZCn65KQCI_kg89QoWJQCLcB/s320/Python.png" width="110" height="122" hspace="50" />
<img src="http://global.download.synology.com/download/pkg_img/Docker/1.9.1-0185/thumb_256.png" width="110" height="122" hspace="50" />
<img src="https://alejandrocq.files.wordpress.com/2010/08/tip-terminal.png" width="110" height="122" hspace="50" />
