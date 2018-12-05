CONTAINER_NAME=KumaEFK

WORKING_FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


docker rm -f $CONTAINER_NAME
docker run --name $CONTAINER_NAME  -d \
  -p 5601:5601 -p 24224:24224 -p 9200:9200 -p 24220:24220 \
  bearhsu2/kuma-efk:1.0
