FROM golang:1.12

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"

ENV GO111MODULE=on

RUN apt-get update && \
    apt-get install build-essential librdkafka-dev -y

CMD ["tail", "-f", "/dev/null"]
