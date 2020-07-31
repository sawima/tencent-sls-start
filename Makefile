.PHONY: all deps clean build
all: deps clean build
deps:
	go get github.com/tencentyun/scf-go-lib/cloudfunction

clean: 
	rm -rf ./bin/index
	
build:
	GOOS=linux GOARCH=amd64 go build -o ./bin/index .
