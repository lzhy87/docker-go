FROM golang:latest
WORKDIR /app
COPY ./ /app
ENV GOPROXY=https://goproxy.cn
RUN go mod download \
&& go get github.com/githubnemo/CompileDaemon
ENTRYPOINT CompileDaemon --build="go build api/main.go" --command=./main