# Dockerfile d'elasticsearch

# S'estableix la imatge d'inici oficial elasticsearch
FROM elasticsearch:2.3

# Defineix el autor
MAINTAINER jordi amela

# Es crea un linc simbolik per poder executar la ordre
RUN ln -s /usr/share/elasticsearch/bin/plugin /bin/plugin

# s'instal·len els plugins
RUN plugin install mobz/elasticsearch-head 
RUN plugin install royrusso/elasticsearch-HQ 

# S'obra el port per defecte d'elasticsearch
EXPOSE 9200
