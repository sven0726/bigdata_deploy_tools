#/bin/sh
# chenxinawen
KAFKA_HOME=/data/app/kafka_2.10-0.8.2.1

IPS=("w00" "w01" "w02")
BIN_FILE=$KAFKA_HOME/start.sh


case $1 in
start)
    for ip in ${IPS[*]}
    do
    #ssh -t hadoop@$ip 'date '
        ssh -t hadoop@$ip "bash ${BIN_FILE}"
    done
    echo "Starting ... "
    ;;
stop)
    for ip in ${IPS[*]}
    do
    	#ssh -t hadoop@$ip 'date '
    	ssh -t hadoop@$ip "bash $KAFKA_HOME/bin/kafka-server-stop.sh"
    done
    echo "stoping ... "
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2

esac
