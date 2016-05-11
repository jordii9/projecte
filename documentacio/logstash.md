# Documentació logstash

## Iniciació

es una documentació sobre una administració massiva de logs que consta de...


## Instalació

A la pagina web oficial de elastic  LINK hi ha dues maneres de aconsegit aquest servei, ja sigui baixan-te un fitxer d'extensió `zip` o bé sigui creant un repositori i baxar-te'l directament amb la ordre yum.
Jo he escollit la segona:

Simplement és obrir un repot a el FILE
a més d'instalar-ho

explicacio del link

i alguna mica mes de xixa


Tt i aixó he creat un script que t'instala tot aquest preoces que he esmentat.

## idea del logstash (cambiar nom)

Logstash és un servidor el qual és basa en tres elements:

- Input : La entrada , és a dir, el fluxe que rep aquest servei que normalment és un fitxer
- Output : La sortida que trasmet aquest servei , ja pots ser que s'envi en un altre servidor , com és el cas del elasticsearch o simplement crear un fitxer , enviar-te un correu o bé la stdout (sortida standard)
- Filter : El el processat de l'input que el pot convertir o simplement afegir nous atributs o més.

Cada un d'aquests tres elements consta dels anomenats plugins, els quals són les ordres o peticions concretes que es duen a terme a cada un d'ells, a més de que té moltissimes possibilitats i moltes utilitats diferents, també se'n poden afegir d'altres simplementn instalant el plugin amb la ordre:
plugin install <PLUGIN>





## configuracio

file de configuracio

El logstash funcióna simplement amb un file de configuració del filtrat


## servei

## funcionament


