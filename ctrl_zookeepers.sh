#/bin/sh
# chenxin.wen
ZOOKEEPER_HOME=/data/app/zookeeper/zookeeper-3.4.6

IPS=("w00" "w01" "w02")
BIN_FILE=$ZOOKEEPER_HOME/bin/zkServer.sh


case $1 in
start)
    for ip in ${IPS[*]}
    do
    #ssh -t hadoop@$ip 'date '
        ssh -t hadoop@$ip "${BIN_FILE} start"
    done
    echo "Starting ... "
    ;;
stop)
    for ip in ${IPS[*]}
    do
    	#ssh -t hadoop@$ip 'date '
    	ssh -t hadoop@$ip "${BIN_FILE} stop"
    done
    echo "stoping ... "
    ;;
status)
    for ip in ${IPS[*]}
    do
        #ssh -t hadoop@$ip 'date '
        ssh -t hadoop@$ip "${BIN_FILE} status"
    done
    echo "statusing ... "
    ;;
restart)
    for ip in ${IPS[*]}
    do
    	#ssh -t hadoop@$ip 'date '
    	ssh -t hadoop@$ip "${BIN_FILE} restart"
    done
    echo "restarting ... "
    ;;
*)
    echo "Usage: $0 {start|stop|restart|status}" >&2

esac
