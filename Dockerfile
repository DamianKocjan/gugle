FROM golang:1.17.6-alpine3.15

RUN mkdir /app

ADD . /app

WORKDIR /app

## download dependencies
RUN go mod download

## expose port 8080
EXPOSE 8080:8080

## build and start binary executable
CMD ["make"]
