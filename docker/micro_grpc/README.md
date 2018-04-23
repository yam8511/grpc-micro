# grpc plugin [DEPRECATED]

```shell
go get -u -v github.com/micro/micro

cp grpc_plugin.go $GOPATH/src/github.com/micro/micro
cd $GOPATH/src/github.com/micro/micro
go build -i -o micro ./main.go ./grpc_plugin.go

# go back to current directory
cp $GOPATH/src/github.com/micro/micro/micro ./micro
```
