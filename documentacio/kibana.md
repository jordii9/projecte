# Documentació kibana

## Iniciació

Aquesta és la documentació sobre una administració massiva de logs que consta de bàsicament tres serveis, aquets són bàsicament el logstash, elasticsearch i el kibana.

## Instal·lació

A la pagina web oficial de elastic [oficial web site](https://www.elastic.co/guide/index.html) hi ha dues maneres de aconsegit aquest servei, ja sigui baixan-te un fitxer d'extensió `zip` o bé sigui creant un repositori i baxar-te'l directament amb la ordre yum.
Jo he escollit la segona:

Simplement consta  d'obrir el repositori de la pagina oficial per exemple en el fitxer `/etc/yum.repos.d/kibana.repo`.
I instal·lar el paquet amb el yum.

Aquesta instalació completa està en un script que t'instala tot aquest procés que he esmentat de forma automatizada.

##L'idea del kibana

El kibana és una eina de postprocesat el qual està pensat per visualitazar, filtrar i monitoritzar de forma massiva tota la informació generada previament en aquest cas per la base de dades elasticsearch.
Aquesta eina està dotada d'un entorn gràfic que permet com he dit abans manipular i filtrar tot tipus de logs de manera senzilla i cómode.

## Entorn Gràfic

El kibana té una eina gràfica mol potent i amb moltes possibilitats , no només mostra tots els logs rebuts ordenats amb els index del elasticsearch sinó que es pot filtrar els logs per qualsevol dels seus atributs i propietats. Un exemple sería filtrar els logs per el fitxer d'origen o bé per el tipus de log o també segons la localització de origen en concret dels logs apache.

A més d'aquesta funcionalitat també proporciona un gran ventall per la creació de gràfiques a temps real de tota mena desde un histograma que conta els logs rebuts fins a mapes  on s'hi determina l'origen de les peticions dels logs.

També s'ofereix la possibilitat de guardar aquestes gràfiques i poder-és mostrar de forma conjunta amb moltes gràfiques d'estil completament diferent.

## Configuració

El kibana està format per un fitxer de configuració el qual si que es té que modificar la seva configuració per que el elasticsearch pugi enviar al servei kibana.

A més l'entorn gràfic també necessita la seva configuració, es pot configurar el index concret o un grup de index com seria tots els index de nom logstash a més de la data del qual el kibana és d'on n'extreu les dades.

## servei

El servei del kibana el que fa és obrir el port per el funcionament de la base de dades a més de poder utilitzar les eines gràfiques.

## funcionament

El funcionament del kibana és mol senzill, simplement es rep massivament desde una base de dades tota la informació indexada el qual el kibana de forma gràfica mostra ordenada i estructurada que facilita la seva manipulació i visualització.
  
