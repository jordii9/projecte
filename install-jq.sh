#! /bin/sh

cd /tmp   # Avis: si ja tens un jq instal·lar te'l remplaçara

# exemple mes avançat
# if rpm ... si ja exiesteix a /bin/jq

wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
cp jq-linux64 /bin/jq
chmod +x /bin/jq
