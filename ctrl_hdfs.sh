#!/bin/sh
# author: chenxin.wen
export HADOOP_HOME=/data/app/hadoop/hadoop2

case $1 in
start)
    $HADOOP_HOME/sbin/start-dfs.sh
    echo "starting hdfs..."
    ;;
stop)
    $HADOOP_HOME/sbin/stop-dfs.sh
    echo "stoping hdfs..."
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2
esac

