# Documentació logstash

## Iniciació

Aquesta és la documentació sobre una administració massiva de logs que consta de bàsicament tres serveis, aquets són bàsicament el logstash, elasticsearch i el kibana.


## Instalació

A la pagina web oficial de elastic  [oficial web site](https://www.elastic.co/guide/index.html) hi ha dues maneres de aconsegit aquest servei, ja sigui baixan-te un fitxer d'extensió `zip` o bé sigui creant un repositori i baxar-te'l directament amb la ordre yum.

Jo he escollit la segona:

Simplement consta  d'obrir el repositori de la pagina oficial per exemple en el fitxer `/etc/yum.repos.d/logstash.repo`.
I instal·lar el paquet amb el yum.

A més de aixó com el logstash consta de *plugins* (que explicarè més endevan).
Dels quals la gran majoria estan predefinits però d'altres no, com és el cas d'un dels plugins que utilitzo, el `json_encode`.
La manera d'instal·lar aquests plugins són:

**plugin install PLUGIN**



Tot aixó està de manera automatizada dins del meu script que crea automaticament tots els elements necessaris per que el logstash funcioni.

## idea del logstash (cambiar nom)

Logstash és un servidor el qual és basa en tres elements:

- Input : La entrada , és a dir, el fluxe que rep aquest servei que normalment és un fitxer
- Output : La sortida que trasmet aquest servei , ja pots ser que s'envi en un altre servidor , com és el cas del elasticsearch o simplement crear un fitxer , enviar-te un correu o bé la stdout (sortida standard)
- Filter : El el processat de l'input que el pot convertir o simplement afegir nous atributs o més.

Cada un d'aquests tres elements consta dels anomenats plugins, els quals són les ordres o peticions concretes que es duen a terme a cada un d'ells, a més de que té moltissimes possibilitats i moltes utilitats diferent.

Els plugins siguin del tipus que siguin, cada un d'ells té característiques els quals es poden afegir i configurar al seu gust.
L'unic que cal tenir en compte dels seus atributs és que n'hi ha alguns d'obligatoris i que no poden funcionar sense aquests. També cal dir que cada caràcteristica sigui o no sigui sol tenir uns valors per defecte que cal tenir sempre en compte.


## configuració

La configuració del logstash és mol simple, ja que té un únic fitxer de configuració el qual no existeix per que es té que crear 

El logstash funcióna simplement amb un fitxer de configuració que determina el input i el output i sobretot el procesat que volem fer amb cada un dels elements que entra.

Aquest fitxer de configuració és el que està en **/etc/logstash/conf.d/logstash.conf**-

La manera manual (per així dir-ho ) de executar el logstash és la seguent.

logstash -f /etc/logstash/conf.d/logstash.conf

D'aquesta manera ens assegurem que el logstash fagi el seu processat i si a sobre el tenim configurat per que a més de enviar-ho al elasticsearch ho faci també per *stdout* ens sortirà amb el format desitjat per pantalla.

Abans de tot aixó és indicat provar el fitxer de configuració per identificar algun error de sintaxis:
logstash -f /etc/logstash/conf.d/logstash.conf

A més cal tenir en compte els possibles problemes de permisos que al script també estàn contemplats.


## servei

Conté un dimoni el qual automatitza la tasca que duu a terme el logstash tot i que no es gaire fiable i és mol recomanable per-ho manualment, tot i així aquest servei també genera els seus propis logs.
 

## funcionament

Simplement el funcionament del logstash a grans trets es basa en rebre un fitxer per entrada (input). Pot ser un fitxer o qualsevol altre cosa que pugi rebre per la seva entrada i a partir de aqui fa un filtrat, ja pot ser mostrar, afegir o modificar els elements del qual consten els nostres logs i a partir de aqui envia el procesat per la sortida  (output) que amb el meu cas és un altre servei com elasticsearch però podria simplement ser la sortida per pantalla (stdout).
El meu logstash està configurat per rebre fitxer per el input, són de /var/log/messages per podrien ser uns altres a més d'aixó també configuro que cada cert temps és faci automaticament i que començi a llegir els fitxers per el final, també s'ha de dir que no repeteix els logs que ja ha afegit. 
Apartir de aqui fa un procesat (filtre) el qual afegeixo el timestamp, el geoip que mostra les localitzacions i algun camp més que mostra informació que l'indentifica. Pot haver el cas que alguns de aquests atributs afegits no es pugin mostrar ja que el log en si no contingui aquesta configuració i per aquest motiu es crei un altre camp anomentat _tag que mostra qualsevol element que no s'hagi pogut crear.



