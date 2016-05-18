##############################################################################
# Dockerfile per executar un logstash
# Basada en una imatge...
##############################################################################

# Establece la imagen de base a utilizar para Ubuntu
FROM elasticsearch:2.3

# Establece el autor (maintainer) del archivo (tu nombre - el autor del archivo)
MAINTAINER jordi amela


RUN ln -s /usr/share/elasticsearch/bin/plugin /bin/plugin
RUN plugin install mobz/elasticsearch-head 
RUN plugin install royrusso/elasticsearch-HQ 

# Puerto para exponer (por defecto: 11211)
EXPOSE 9200
