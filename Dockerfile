FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /CI-CD

EXPOSE 3000

CMD ["/CI-CD"]
