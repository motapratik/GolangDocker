FROM golang:latest
#golang:alpine3.13
LABEL maintenar="Pratik Mota"
RUN mkdir /app
WORKDIR /app

RUN export GO111MODULE=on
RUN cd /app && git clone https://github.com/motapratik/GolangDocker.git
RUN cd /app/GolangDocker && go build
EXPOSE 8080
ENTRYPOINT [ "/app/GolangDocker/GolangDocker" ]