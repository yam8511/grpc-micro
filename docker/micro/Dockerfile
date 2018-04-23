ARG GO_VERSION=latest
FROM golang:${GO_VERSION}
COPY ./micro /micro
WORKDIR /
ENTRYPOINT [ "/micro" ]
