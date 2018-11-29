docker rm -f elk
docker run -d -p 5601:5601 -p 9200:9200 -p 5044:5044  --name elk sebp/elk:651

