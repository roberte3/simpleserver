FROM golang:latest
WORKDIR /app
COPY . . 
run go get -d -v ./..
RUN go build -o main . 
EXPOSE 8080
CMD ["./simpleserver"]