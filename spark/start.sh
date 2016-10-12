#!/usr/bin/env bash
export JAVA_HOME=/home/qboxserver/jdk7/_package/jdk1.7.0_79
usage="Usage :\n Start Master : $0 master  \n Start Slave : $0 slave MASTER_IP  "

if [ $# != 1 ] && [ $# != 2 ]
then
	echo $usage
	exit 1
fi

TYPE=$1
MASTER_IP=$2

if [ "$TYPE" = "master" ]
then
	./sbin/start-master.sh
elif [ "$TYPE" = "slave" ] && [ "$MASTER_IP" != "" ]
then
	./sbin/start-slave.sh $MASTER_IP
else
	echo $usage
	exit 1
fi

