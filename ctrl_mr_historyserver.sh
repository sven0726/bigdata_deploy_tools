#!/bin/sh
# author: chenxin.wen
export HADOOP_HOME=/data/app/hadoop/hadoop2

case $1 in
start)
    $HADOOP_HOME/sbin/mr-jobhistory-daemon.sh start historyserver
    echo "start historyserver"
    ;;
stop)
    $HADOOP_HOME/sbin/mr-jobhistory-daemon.sh stop historyserver
    echo "stop historyserver"
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2
esac

