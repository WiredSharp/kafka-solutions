#!/bin/sh

export KAFKA_HOME=/home/dthibau/Formations/Kafka/MyWork/kafka_2.13-3.2.0
export KAFKA_CLUSTER=/home/dthibau/Formations/Kafka/github/solutions/kafka-cluster
export KAFKA_LOGS=/home/dthibau/Formations/Kafka/MyWork/kafka-logs


$KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_CLUSTER/server.properties --override broker.id=1 --override log.dirs=$KAFKA_LOGS/broker-1/kafka-logs
$KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_CLUSTER/server.properties --override broker.id=2 --override log.dirs=$KAFKA_LOGS/broker-2/kafka-logs --override listeners=PLAINTEXT://:9093
$KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_CLUSTER/server.properties --override broker.id=3 --override log.dirs=$KAFKA_LOGS/broker-3/kafka-logs --override listeners=PLAINTEXT://:9094
