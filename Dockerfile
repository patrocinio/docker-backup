FROM       alpine
MAINTAINER Johannes 'fish' Ziemke <fish@docker.com> (@discordianfish), Eduardo Patrocinio <epatro@gmail.com> (@patrocinio)

ENV  GOPATH /go
ENV APPPATH $GOPATH/src/github.com/patrocinio/docker-backup
COPY . $APPPATH
RUN apk add --update -t build-deps go git libc-dev && cd $APPPATH \
    && go get -d -v \
    && go build -o /bin/docker-backup -v \
    && mkdir /docker-backup \
    && ln -s /bin/docker-backup /docker-backup/docker-backup \
    && apk del --purge build-deps && rm -rf $GOPATH

WORKDIR    /docker-backup
ENTRYPOINT [ "/bin/docker-backup" ]
