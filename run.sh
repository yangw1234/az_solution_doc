# export ANALYTICS_ZOO_HOME=...
# export OMP_NUM_THREADS=1 default to multiple model with single thread
# export DATAPATH=...

sh ${ANALYTICS_ZOO_HOME}/bin/spark-submit-python-with-zoo.sh \
 --master spark://AEP-008:7077 \
 --executor-cores 24 \
 --total-executor-cores 192 \
 --executor-memory 175G \
 --driver-memory 20G \
 --conf spark.network.timeout=10000000 \
 inception.py \
 --batchSize 1536 \
 --learningRate 0.0896 \
 -f $DATAPATH \
 --maxIteration 62000
