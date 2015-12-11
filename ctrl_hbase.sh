#!/bin/sh

# author: chenxin.wen

case $1 in
start)
    $HBASE_HOME/bin/start-hbase.sh
    echo "starting hbase..."
    ;;
stop)
    $HBASE_HOME/bin/stop-hbase.sh
    echo "stoping hbase..."
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2
esac

