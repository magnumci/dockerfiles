FROM magnum/generic
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

RUN wget -q http://nodejs.org/dist/v0.11.11/node-v0.11.11-linux-x64.tar.gz
RUN tar -xzf ./node-v0.11.11-linux-x64.tar.gz

RUN cp -r node-v0.11.11-linux-x64/bin/* /usr/bin/ && \
    cp -r node-v0.11.11-linux-x64/lib/* /usr/lib/ && \
    cp -r node-v0.11.11-linux-x64/include/* /usr/include/ && \
    cp -r node-v0.11.11-linux-x64/share/* /usr/share/ && \
    rm -rf ./node-*