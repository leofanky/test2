FROM golang:latest
WORKDIR /app
COPY 	multygo_master ./
EXPOSE 9090
CMD ["./multygo_master"]
