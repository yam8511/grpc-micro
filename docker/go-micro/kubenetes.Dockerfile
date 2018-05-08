ARG GO_VERSION=1.10.2
FROM golang:${GO_VERSION}-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# install govendor
RUN go get -u -v github.com/kardianos/govendor

# install go-micro packages
RUN go get -u -v github.com/micro/go-micro
RUN go get -u -v github.com/micro/go-grpc
RUN go get -u -v github.com/micro/protoc-gen-micro
RUN go get -u -v github.com/micro/micro
RUN go get -u -v github.com/micro/kubernetes/go/micro

# install database packages
RUN go get -u -v github.com/go-sql-driver/mysql
RUN go get -u -v github.com/jinzhu/gorm
RUN go get -u -v github.com/garyburd/redigo/redis

# instal event sourcing packages
RUN go get -u -v github.com/nsqio/go-nsq

# install config packages
RUN go get -u -v github.com/naoina/toml
