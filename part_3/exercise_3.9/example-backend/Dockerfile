# Build stage
FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app
COPY . .

RUN adduser -S appuser && CGO_ENABLED=0 go build

# Run stage
FROM scratch

WORKDIR /usr/src/app

EXPOSE 8000
ENV PORT=8000
ENV REQUEST_ORIGIN=http://localhost:5000

COPY --from=build-stage /etc/passwd /etc/passwd
COPY --from=build-stage /usr/src/app/server ./server

USER appuser

CMD ["./server"]
