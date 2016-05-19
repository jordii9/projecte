##############################################################################
# Dockerfile per executar un logstash
# Basada en una imatge...
##############################################################################

# Establir l'imatge per d'inici
FROM logstash:2.3

# Establece el autor (maintainer) del archivo (tu nombre - el autor del archivo)
MAINTAINER jordii9

# executar el script
#ADD instalacio_logstash.sh .
#RUN ./instalacio_logstash-sh

# Actualización de la lista de fuentes del repositorio de aplicaciones por defecto
COPY logstash.conf /etc/logstash/conf.d/logstash.conf
COPY logstash-tutorial-dataset /var/tmp/logstash-tutorial-dataset

RUN cp /opt/logstash/bin/logstash-plugin /bin/plugin
RUN plugin install logstash-filter-elasticsearch

# Execucio de la ordre per el container i suplantar la ordre base de la imatge oficial

#COPY docker-entrypoint.sh /

#ENTRYPOINT ["/docker-entrypoint.sh"]


CMD ["logstash","agent", "-f", "/etc/logstash/conf.d/logstash.conf"]
