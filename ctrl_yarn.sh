#!/bin/sh
#author : chenxin.wen
case $1 in
start)
    $HADOOP_HOME/sbin/start-yarn.sh
    echo "starting yarn..."
    ;;
stop)
    $HADOOP_HOME/sbin/stop-yarn.sh
    echo "stoping yarn..."
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2
esac

