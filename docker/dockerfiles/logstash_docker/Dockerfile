##############################################################################
# Jordi Amela								     #
# Dockerfile per executar un logstash					     #
# Basada en una imatge del logstash oficial				     #
##############################################################################

# Establir l'imatge per d'inici

FROM logstash:2.3

# Establir autor

MAINTAINER jordi Amela

# Copia del fitxer de configuració del logstash i un fitxer de logs d'exemples

COPY logstash.conf /etc/logstash/conf.d/logstash.conf
COPY logstash-tutorial-dataset /var/tmp/logstash-tutorial-dataset

# actualització de la imatge i instal·lació del vim 

#RUN apt-get
#RUN apt-get vim

# Instal·lacio del plugin elasticsearh

RUN cp /opt/logstash/bin/logstash-plugin /bin/plugin
RUN plugin install logstash-filter-elasticsearch

# Creació de permisos per tothom per poder llegir els fitxers de logs.
RUN chmod -R o+r /var/log
RUN chmod -R o+r /var/tmp   

# Execucio de la ordre per el container i suplantar la ordre base de la imatge oficial

CMD ["logstash","agent", "-f", "/etc/logstash/conf.d/logstash.conf"]
