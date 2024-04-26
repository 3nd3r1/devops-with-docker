FROM golang:1.16-alpine

WORKDIR /usr/src/app
COPY . .

EXPOSE 8080
ENV PORT=8080

RUN go build

CMD ["./server"]
