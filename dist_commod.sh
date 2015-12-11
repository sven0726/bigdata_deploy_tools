#bin/sh
# chenxin.wen

IPS=("w00" "w01" "w02") 

COMMOD=$1

for ip in ${IPS[*]}
do
  echo $ip 
  ssh -t hadoop@$ip $COMMOD
done 


