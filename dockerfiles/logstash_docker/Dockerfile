##############################################################################
# Dockerfile per executar un logstash
# Basada en una imatge...
##############################################################################

<<<<<<< HEAD:dockerfiles/logstash_docker/Dockerfile
# Establir l'imatge per d'inici
FROM logstash:2.3

# Establece el autor (maintainer) del archivo (tu nombre - el autor del archivo)
MAINTAINER jordii9

# Actualización de la lista de fuentes del repositorio de aplicaciones por defecto
#RUN apt-get update

# Instalar Memcached
#RUN apt-get install -y memcached

# Puerto para exponer (por defecto: 11211)
#EXPOSE 11211

# Comando Memcached por defecto con algunos argumentos
#CMD ["-u", "root", "-m", "128"]

# Establece el usuario para ejecutar el demonio Memcached
#USER daemon

# Establece el punto de entrada para los binarios de Memcached
#ENTRYPOINT memcached
=======
# Establece la imagen de base a utilizar para Ubuntu
FROM logstash:2.3

# Establece el autor (maintainer) del archivo (tu nombre - el autor del archivo)
MAINTAINER jordi amela

# Actualización de la lista de fuentes del repositorio de aplicaciones por defecto
ADD logstash.conf /etc/logstash/conf.d/logstash.conf
ADD               /var/tmp/
ADD               /var/tmp/
>>>>>>> 79e3ae5bd13d5d60e231369d13df29585ee5f14e:dockerfiles/logstash_docker/Dockerfile
