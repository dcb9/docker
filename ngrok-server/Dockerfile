FROM tutum/ngrok

MAINTAINER bob bob@phpor.me

RUN GOPATH="/ngrok" GOOS="" GOARCH="" go get github.com/jteeuwen/go-bindata/go-bindata
COPY build.sh /
