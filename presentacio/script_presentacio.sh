#! /bin/bash
# Jordi Amela

# Script que copia la presentacio del github del projecte crea la presentacio i la inicia automaticament.

#cp presentacio.md ../../presentacio/

#pandoc -t html5 --template=template-revealjs.html \
#    --standalone --section-divs \
#  --variable theme="beige" \
#  --variable transition="linear" \
#  presentacio.md -o presentacio.html

pandoc -t html5 --template=template-revealjs.html \
    --standalone --section-divs \
  --variable theme="night" \
  --variable transition="linear" \
  presentacio.md -o presentacio.html


firefox presentacio.html &disown

# Github oficial https://gist.github.com/aaronwolen/5017084


