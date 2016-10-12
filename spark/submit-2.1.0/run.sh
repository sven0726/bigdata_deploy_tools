
if [ -z "$1" ]; then
	echo "usage: $0 <app jar>"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "$1 not exist"
	exit 2
fi

VER=$(date "+%F-%H-%M-%S")
HDFSDIR=hdfs://hadoop_cluster:5001/tmp/spark
JAR=$HDFSDIR/spark-app-${VER}.jar

hadoop/bin/hdfs dfs -put -f "$1" "$JAR"
echo "hdfs put $1 => $JAR OK" | tee -a put.log

/home/qboxserver/spark-2.1.0/bin/spark-submit --verbose --deploy-mode cluster \
	--master  spark://sparkserver:6066 \
	--class us.qbox.bi.gold.Main \
	--properties-file gold.conf $JAR 2>&1 | tee -a run.log
