FROM golang:alpine
EXPOSE 8000
COPY app.go .
COPY blockchain.html /
COPY openapi.yml .
RUN apk add git
RUN go get -d -v\
	github.com/lib/pq\
	github.com/julienschmidt/httprouter
RUN go build -o a.out
RUN ls
ENTRYPOINT ["./a.out"]
