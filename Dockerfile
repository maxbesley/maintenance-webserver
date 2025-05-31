# TODO: convert this into a mult-stage build

FROM golang:1.18-alpine

ARG CGO_ENABLED=0
ARG GOOS=linux

WORKDIR /app

COPY . .

RUN go mod init app
RUN go build -o server
RUN chmod +x server

EXPOSE 9000

ENTRYPOINT ["/app/server"]
