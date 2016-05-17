# Documentació elasticsearch

## Iniciació

Aquesta és la documentació sobre una administració massiva de logs que consta de bàsicament tres serveis, aquets són bàsicament el logstash, elasticsearch i el kibana.v


## Instalació

A la pagina web oficial de elastic [oficial web site](https://www.elastic.co/guide/index.html) hi ha dues maneres de aconsegit aquest servei, ja sigui baixan-te un fitxer d'extensió `zip` o bé sigui creant un repositori i baxar-te'l directament amb la ordre yum.
Jo he escollit la segona:

Simplement consta  d'obrir el repositori de la pagina oficial per exemple en el fitxer `/etc/yum.repos.d/logstash.repo`.
I instal·lar el paquet amb el yum.

A més hi ha nombrosos plugins gràfics que fan que es pugi controlar i monitoritzar la base de dades de elasticseach de manera mol mes fàcil.
He instal·lat dos de diferents que aporten coses diferents.
Aquests dos plugins són:

- mobz/elasticsearch-head
- royrusso/elasticsearch-HQ

Per poder instal·lar aquets plugis he creat uns links simbolics per poder facilitar les ordres executables.

He crear un scrip dins del directori instalacio que crea l'elasticsearch automaticament amb totes les configuracions necessaries.


## idea del elasticsearch (cambiar nom)

Elasticsearch simplement fa de base de dades, és a dir, rep els elements procesats per logstash i els va guardan.
Aquí és on entra en joc els index. Que l'elastic els crea automaticament cada dia. El fonament dels index és guardar ordenadament i diariament els logs (en aquest cas). 

Apart d'aixó aquest index ofereixen la possibilitat de filtrar i buscar a partir dels camsps.


Hi ha nombrosos index que normalment es creen per aplicació. Per exemple per el logstash es crea diariament un index amb aquest nom a més de la data.
Pero també hi ha index del kibana i d'altres serveis que en el meu cas no són necessaris per el funcionament.


## Entorn Gràfic

L'elasticsearch té nombrosos plugin gràfics per controlar, monitoritzar i manipular

Jo he escollit dos que m'han semlbat més interessants i aportent funcionalitats una mica diferents.
El plugin creat per elastic-hq que s'accedeix a partir de .... ens ofereix un entorn gràfic que es pot controlar els nombrosos indexs però sobretot l'estat del eslaticsearch a més de si alguna configuració no es correcte o alguna d'elles es pot millorar.

L'altre plugin que es pot accedir desde el firefox amb aquesta URI .... ens ofereix la possibilitat de entrar dins de la base de dades elasticsearch i buscar i manegar aquesta base de dades a més de poder controlar els diferents indexs i poder configurar-los.

Per aquest motius m'ha asemblat apropiat utilitzar dues eines gràfiques per l'elasticsearch.
Tot i aixó també he estat utilitzan la eina desde el terminal curl el qual també ofereix varies opcions.

## configuracio

La configuració del elastic es basa amb file de configuracio


## servei

## funcionament


