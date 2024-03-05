FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bash

WORKDIR /opt/app

COPY log_creator.sh /opt/app/log_creator.sh

CMD ["/bin/bash", "/opt/app/log_creator.sh"]
