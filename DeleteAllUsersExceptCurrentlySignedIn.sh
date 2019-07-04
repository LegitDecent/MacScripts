#!/bin/bash

cd /users/
sudo find . ! -iname Shared ! -iname .localized  -maxdepth 1 >> /tmp/1.txt
cd /tmp/
sed '1d' 1.txt > tmpfile; mv tmpfile 1.txt
while read a ; do echo ${a/"./"/""} ; done < 1.txt > 1.txt.t ; mv 1.txt{.t,}
awk 'gsub("//","")' 1.txt > 2.txt
rm 1.txt
cp 2.txt 1.txt
rm 2.txt
stat -f%Su /dev/console > 2.txt
sed -i -e 's/^//' 2.txt
grep -xvf 2.txt 1.txt > 3.txt
rm 1.txt
rm 2.txt
cp 3.txt 1.txt
rm 3.txt
while read i ; do sudo dscl . -delete /Users/$i ; done < 1.txt
cd /users/
while read i ; do sudo chown root $i ; done < /tmp/1.txt
while read i ; do sudo chmod 777 $i ; done < /tmp/1.txt
while read i ; do sudo rm -rf $i ; done < /tmp/1.txt