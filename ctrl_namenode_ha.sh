#!/usr/bin/env bash
# author: chenxin.wen

export HADOOP_HOME=/data/app/hadoop/hadoop2


case $1 in
start)
    ssh -t hadoop@master.cloud $HADOOP_HOME/sbin/hadoop-daemon.sh  start journalnode
    ssh -t hadoop@slave01.cloud $HADOOP_HOME/sbin/hadoop-daemon.sh  start journalnode
    ssh -t hadoop@slave02.cloud $HADOOP_HOME/sbin/hadoop-daemon.sh  start journalnode

    echo "starting journalnode..."
    ;;
stop)
    ssh -t hadoop@master.cloud $HADOOP_HOME/sbin/hadoop-daemon.sh  stop journalnode
    ssh -t hadoop@slave01.cloud $HADOOP_HOME/sbin/hadoop-daemon.sh  stop journalnode
    ssh -t hadoop@slave02.cloud $HADOOP_HOME/sbin/hadoop-daemon.sh  stop journalnode
    
    echo "stoping journalnode..."
    ;;
*)
    echo "Usage: $0 {start|stop}" >&2
esac

