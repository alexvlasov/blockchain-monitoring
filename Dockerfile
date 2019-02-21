FROM golang:1.11

LABEL maintainer="Yu Jin"

ARG package_name=github.com/alexvlasov/blockchain-monitoring
ARG workdir=$GOPATH/src/$package_name

WORKDIR $GOPATH

ADD . $workdir
RUN go install $package_name

ENTRYPOINT ["blockchain-monitoring"]
