FROM harbor.high.am/cncjs/cncjs

RUN apt-get update
RUN apt-get install -y socat
