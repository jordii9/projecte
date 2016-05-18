##############################################################################
# Dockerfile per executar un logstash
# Basada en una imatge...
##############################################################################

# Establir l'imatge per d'inici
FROM fedora:20

# Establece el autor (maintainer) del archivo (tu nombre - el autor del archivo)
MAINTAINER jordii9

# executar el script
ADD instalacio_logstash.sh .
RUN ./instalacio_logstash-sh

# Actualización de la lista de fuentes del repositorio de aplicaciones por defecto
ADD logstash.conf /etc/logstash/conf.d/logstash.conf
ADD logstash-tutorial-dataset /var/tmp/logstash-tutorial-dataset
