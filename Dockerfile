FROM golang:1.10.3

ADD .  /go/src/github.com/amku91/lam-heroku
WORKDIR  /go/src/github.com/amku91/lam-heroku
RUN go get ./...

  # Install api binary globally within container
RUN go install github.com/amku91/lam-heroku

  # Set binary as entrypoint
ENTRYPOINT /go/bin/lam-heroku --port 8090 --host 0.0.0.0

  # Expose default port (8080)
EXPOSE 8090

