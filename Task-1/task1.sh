#!/bin/bash
echo Enter the path
read path
cd $path
mkdir task1
cd ./task1
for i in {1..100}
do
truncate -s 10K file$i.txt
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1 > file$i.txt
touch -d '2 days ago' file$i.txt
sudo chmod 444 file$i.txt
sudo chattr +i file$i.txt
done
sudo -k

