FROM golang:1.16-alpine

EXPOSE 8000

ENV PORT=8000
ENV REQUEST_ORIGIN=http://localhost:5000

WORKDIR /usr/src/app
COPY . .

RUN adduser -S appuser && chown -R appuser . && go build && go clean -modcache

USER appuser

CMD ["./server"]
