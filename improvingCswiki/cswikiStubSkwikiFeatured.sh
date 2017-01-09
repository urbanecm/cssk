#!/bin/bash

./run.sh cswikiStubSkwikiFeatured
sed -i '1d' cswikiStubSkwikiFeatured.txt

echo "Následující položky na Wikidatech jsou na české Wikipedii pahýly a na slovenské Wikipedii dobré anebo nejlepší. Seznam je aktualizován roboticky. " > /data/scratch/$$.txt
echo >> /data/scratch/$$.txt
cat cswikiStubSkwikiFeatured.txt >> /data/scratch/$$.txt

./empty.py User:UrbanecmBot/CSSK1
python ~/pywikibot/scripts/add_text.py -always -textfile:/data/scratch/$$.txt -page:User:UrbanecmBot/CSSK1
rm /data/scratch/$$.txt
