FROM debian

RUN apt-get update && apt-get install -y build-essential wget libgmp-dev

RUN mkdir /data && wget http://www.compgenome.org/lochap/code_release/LocHap-release-v2.0.tar.gz -O /data/LocHap-release-v2.0.tar.gz
WORKDIR /data
RUN tar -xzvf LocHap-release-v2.0.tar.gz && cd LocHap-release-v2.0 && ./install.sh 
