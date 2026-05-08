FROM golang:1.26

WORKDIR /app

COPY . .

RUN go mod tidy

# RUN go build -o main .

EXPOSE 9577

CMD ["go","run","main.go"]