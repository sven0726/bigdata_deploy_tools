

function copyConfig (){
   ssh -t hadoop@$1 rm -rf /data/app/hadoop/etc
   scp -r hadoop/etc hadoop@$1:/data/app/hadoop/
   scp -r ~/.bashrc hadoop@$1:~
   ssh -t hadoop@$1 source ~/.bashrc
}

IPS=("w01" "w02") 

for ip in ${IPS[*]}
do 
    echo $ip
    copyConfig $ip
done 
