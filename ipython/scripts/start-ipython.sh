#!/bin/sh
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
# for the CDH-installed Spark
export SPARK_HOME='/usr/lib/spark/'
 
# this is where you specify all the options you would normally add after bin/pyspark
# single spark process, ipython run it
#export PYSPARK_SUBMIT_ARGS='--master local --deploy-mode client --num-executors 1 --executor-memory 64m --executor-cores 1'

# connect to a local spark cluster
export PYSPARK_SUBMIT_ARGS='--master spark://vagrant-ubuntu-trusty-64:7077'


# add pyspark to PYTHON path
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build

cd /vagrant/notebooks
ipython notebook --profile=pyspark --ip='*'
