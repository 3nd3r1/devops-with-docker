FROM golang:1.16-alpine

WORKDIR /usr/src/app
COPY . .

EXPOSE 8000

ENV PORT=8000
ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

CMD ["./server"]
