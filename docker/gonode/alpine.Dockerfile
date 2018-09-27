ARG GO_VERSION=1.10.2
FROM golang:${GO_VERSION}-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
# install govendor
RUN go get -u -v github.com/kardianos/govendor

# install node yarn
RUN apk add nodejs
RUN npm install -g yarn
