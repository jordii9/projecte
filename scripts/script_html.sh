#! /bin/bash
# Jordi Amela

# Script que utilitza el pandoc per passar de md a html

for M in *.md;
do
	pandoc \
	$M \
	--from markdown \
	--to html \
	--standalone \
	--template=template.txt \
	--output ${M%.md}.html
	
	xmllint --valid --noout ${M%.md}.html 
done
