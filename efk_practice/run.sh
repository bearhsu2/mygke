CONTAINER_NAME=KumaEFK

docker rm -f $CONTAINER_NAME
docker run --name $CONTAINER_NAME  -d \
  -p 5601:5601 -p 24224:24224 -p 9200:9200 -p 24220:24220 \
  lis0x90/efk
