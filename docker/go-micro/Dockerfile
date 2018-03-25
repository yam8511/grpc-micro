ARG GO_VERSION=latest
FROM golang:${GO_VERSION}

# install govendor
RUN go get -u -v github.com/kardianos/govendor

# install go-micro packages
RUN go get -u -v github.com/micro/go-micro
RUN go get -u -v github.com/micro/go-grpc
RUN go get -u -v github.com/micro/protoc-gen-micro
RUN go get -u -v github.com/micro/micro

# install database packages
RUN go get -u -v github.com/jinzhu/gorm
RUN go get -u -v github.com/garyburd/redigo/redis

# install config packages
RUN go get -u -v github.com/naoina/toml
