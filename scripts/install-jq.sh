#! /bin/sh

# Jordi Amela

#Script que crea la eina jq (format json)
cd /tmp   # Avis: si ja tens un jq instal·lar te'l remplaçara

# Descargar jq
wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
cp jq-linux64 /bin/jq

# Permisos d'execució
chmod +x /bin/jq
