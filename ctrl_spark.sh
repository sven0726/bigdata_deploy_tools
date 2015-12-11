#!/bin/sh
#author : chenxin.wen
case $1 in
start)
    $SPARK_HOME/sbin/start-all.sh
    #$SPARK_HOME/sbin/start-history-server.sh hdfs://hadoop:8020/directory
    echo "starting spark..."
    ;;
stop)
    $SPARK_HOME/sbin/stop-all.sh
    #$SPARK_HOME/sbin/stop-history-server.sh
    echo "stoping spark..."
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2
esac

