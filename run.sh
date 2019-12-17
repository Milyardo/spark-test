#!/usr/bin/env bash
set -x
set -e

if [ -z "$SPARK_HOME" ]
then
  SPARK_HOME=./spark-2.4.4-bin-hadoop2.7
fi

SPARK_SUBMIT=$SPARK_HOME/bin/spark-submit

if [ -z "$CLASS_NAME" ]
then
  CLASS_NAME=com.github.milyardo.sparktest.SimpleApp
fi

sbt package 
$SPARK_SUBMIT --class "$CLASS_NAME" target/scala-2.11/simple-project_2.11-1.0.jar
