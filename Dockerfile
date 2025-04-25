FROM golang:1.24-alpine

WORKDIR /app

COPY . .

RUN go mod init app
RUN CGO_ENABLED=0 GOOS=linux go build -o server

EXPOSE 80

CMD ["/app/server"]
