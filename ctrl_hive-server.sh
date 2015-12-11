#!/bin/sh

# author: chenxin.wen
case $1 in
start)
    nohup $HIVE_HOME/bin/hive --service hiveserver2 &
    echo "starting hiveserver..."
    ;;
stop)
#    $HBASE_HOME/bin/stop-hbase.sh
#    echo "stoping hbase..."
    ;;
*)
    echo "Usage: $0 {start}" >&2
esac

