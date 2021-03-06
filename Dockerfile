FROM golang:1.17.0-alpine

COPY . /go/src/github.com/dirkarnez/golang-hello-world
WORKDIR /go/src/github.com/dirkarnez/golang-hello-world

RUN go build -o app && cd emscripten-cpp-source && ls && cd ..

ENTRYPOINT [ "./app" ]

EXPOSE 5000
