#!/bin/bash

./run.sh cswikiShortSkwikiLong
sed -i '1d' cswikiShortSkwikiLong.txt

echo "Následující položky na Wikidatech jsou na české Wikipedii kratší, než 3000 znaků a na slovenské Wikipedii delší, než 15000 znaků. Seznam je aktualizován roboticky. " > /data/scratch/$$.txt
echo >>/data/scratch/$$.txt
cat cswikiShortSkwikiLong.txt >> /data/scratch/$$.txt

./empty.py Wikipedista:UrbanecmBot/CSSK
python ~/pywikibot/scripts/add_text.py -textfile:/data/scratch/$$.txt -page:User:UrbanecmBot/CSSK
rm /data/scratch/$$.txt
