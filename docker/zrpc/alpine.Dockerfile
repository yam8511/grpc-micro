ARG GO_VERSION=1.10.3
FROM golang:${GO_VERSION}-alpine

# install git
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# install govendor
RUN go get -u -v github.com/kardianos/govendor

# install protobuff
RUN go get -u -v github.com/golang/protobuf/protoc-gen-go

# install zrpc packages
RUN go get -u -v github.com/yam8511/zrpc

# install database packages
RUN go get -u -v github.com/go-sql-driver/mysql
RUN go get -u -v github.com/jinzhu/gorm
RUN go get -u -v github.com/garyburd/redigo/redis
RUN go get -u -v github.com/go-redis/redis

# instal event sourcing packages
RUN go get -u -v github.com/nsqio/go-nsq

# install config packages
RUN go get -u -v github.com/naoina/toml

RUN go get -u -v google.golang.org/appengine/cloudsql
