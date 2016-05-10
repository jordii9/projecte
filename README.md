# Repositori de github del projecte

## Jordi Amela Fuentes
## Escola del treball
## 2016

Aquest és el el meu repositori de treball on guardaré les documentacions,sripts i tot el necessari.

# El meu treball tracta de la **centralització de logs JSON en BBDD i post-processat**. 

Per començar el meu treball te 3 serveis fonamentals, logstash, elasticsearch i kibana.
Cada un d'aquests serveis te la seva funció particular pero es pot dir que la totalitat d'aquests serveis funcionants és rebre carrega massiva de logs el qual finalment el kibana mostra per pantalla el resultat i filtrat dels logs generats.

# logstash

Més concretament, el **logstash** el que fa és rebre una entrada (input) que normalment serà un o dos fixers els processa (fa un filtrat) i genera una sortida (un output) que en aquest cas esta redirigida al **elasticsearch**

# Elasticsearch

És la base de dades en el qual el logstash emet tots els logs procesats i els desa a el elasticsearch en forma d'index.

# Kibana

I finalment el kibana recull aquests index i els mostra gràficament amb gràfiques amb temps real o simplement mostra cada log amb el seu atribut. 
