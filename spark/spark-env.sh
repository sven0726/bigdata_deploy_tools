#!/usr/bin/env bash
#
SPARK_LOCAL_DIRS=/disk7/spark-local2,/disk8/spark-local2
SPARK_WORKER_CORES=12
SPARK_WORKER_MEMORY=30g
SPARK_DAEMON_JAVA_OPTS="-Dspark.deploy.recoveryMode=ZOOKEEPER -Dspark.deploy.zookeeper.url=localhost:2181 -Dspark.deploy.zookeeper.dir=/spark-2.0"
SPARK_PID_DIR=~/spark-2.1.0
SPARK_CLASSPATH=~/spark-2.1.0/jars/spark-streaming-kafka-0-8-assembly_2.11-2.0.1.jar
SPARK_WORKER_INSTANCES=2
