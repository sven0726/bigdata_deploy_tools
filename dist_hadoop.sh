#!/bin/sh

function doCopy
{
    scp -r hadoop/hadoop-2.6.0.tar.gz hadoop@$1:/data/app/hadoop/
    ssh -t hadoop@$1 rm -rf /data/app/hadoop/hadoop-2.6.0
    ssh -t hadoop@$1 rm -rf /data/app/hadoop/hadoop2
    ssh -t hadoop@$1 tar -zxvf /data/app/hadoop/hadoop-2.6.0.tar.gz -C /data/app/hadoop/
    ssh -t hadoop@$1 ln -s  /data/app/hadoop/hadoop-2.6.0 /data/app/hadoop/hadoop2 
    ssh -t hadoop@$1 rm -rf /data/app/hadoop/hadoop2/etc
    ssh -t hadoop@$1 ln -s  /data/app/hadoop/etc /data/app/hadoop/hadoop2/etc
}

IPS=("w00" "w01" "w02") 

#IPS=("master.cloud")

for ip in ${IPS[*]}
do
  echo $ip 
  doCopy $ip
done 


