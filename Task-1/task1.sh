#!/bin/bash
echo Enter the path
read path
cd $path
mkdir task1
for i in {1..100}
do
truncate -s 10K ./task1/file$i.txt
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1 > ./task1/file$i.txt
done
sudo chmod -R 555 task1
sudo -k
