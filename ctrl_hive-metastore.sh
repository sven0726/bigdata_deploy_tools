#!/bin/sh

# author: chenxin.wen
case $1 in
start)
    nohup $HIVE_HOME/bin/hive --service metastore  &
    echo "starting hive-metastore..."
    ;;
stop)
#    $HBASE_HOME/bin/stop-hbase.sh
#    echo "stoping hive-metastore..."
    ;;
*)
    echo "Usage: $0 {start}" >&2
esac

