# Imatge base
FROM golang:buster

# Variables d'entorn
ENV GOPATH=$GOPATH:/usr/share/gocode

# Executar ordres de bash
RUN apt-get update
RUN apt-get upgrade -y

# Directori de treball
WORKDIR /usr/local/go/src/github.com/aniolm9/docker-dlp2019
COPY . /usr/local/go/src/github.com/aniolm9/docker-dlp2019

RUN go get ./
RUN go build

CMD go get github.com/pilu/fresh && fresh
