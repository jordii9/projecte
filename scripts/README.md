# Scripts

## Guia d'usuari

En aquest directori hi han scripts complementaris per el projecte.
Aquest és el manual per utilitzar correctament aquests scripts.

## Instruccions

1. Dins d'un terminal Linux al directori escollit.

2.  Descarregar el repositori.

	```
		$ git clone https://github.com/jordii9/projecte.git
	```
	
3.  Entrar al directori dels scripts complementaris.

	```
		$ cd projecte/scripts
	```

4. En aquest moment sóm dins d'aquest directori ara toca executar el script corresponent.

5.  Per executar un script. (en algun de aquests scripts pot ser necessari tenir permisos d'administrador.
    
 	```
 		$ <sudo> ./<nom_script>
 	```
  
## Pandoc

## Instal·lació

**dnf/yum install -y pandoc texlive**

És una eina mol eficaç de conversió de formats i creació també de presentacions.
Desde el llenguatge markdown és capaç de transformar-ho a html o fins i tot a pdf.
 
També és una eina mol pràctica per crear presentacions escollint el format necessari.

He adjuntat al meu treball un script  de pandoc que crea fitxers html a partir de markdown dins d'un directori.

A més un parell d'exemples d'utilització del pandoc:

- Exemple de creacio d'una presentació de tipus dzslides

 	```
 		$ pandoc -t dzslides -s presentacio.md -o presentacio.html
 	```
- Exemple de passar un fitxer en markdown a pdf

	```
		pandoc documentacio.txt -o documentacio.pdf
	``´

- Exemple de document html a partir de markdown
	```
		pandoc -f html -t markdown hello.html
	```

Pàgina d'interès d'exemples pandoc:

[Pandoc exemples](http://pandoc.org/demos.html)
