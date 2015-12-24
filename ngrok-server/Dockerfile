FROM tutum/ngrok

MAINTAINER bob bob@phpor.me

COPY build.sh /
RUN GOPATH="/ngrok" GOOS="" GOARCH="" go get github.com/jteeuwen/go-bindata/go-bindata
RUN cd /ngrok ; GOPATH="/ngrok" GOOS="" GOARCH="" go get -tags 'release' -d -v ngrok/...
