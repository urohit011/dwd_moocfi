FROM ubuntu:16.04

WORKDIR /dock_1.7

COPY script.sh .

RUN apt-get update && apt-get install -y curl
RUN chmod 777 ./script.sh

CMD ["/bin/bash", "./script.sh"]