FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 
RUN go install github.com/haidner1/Interview-Prep/app@latest
RUN cd /build && git clone https://github.com/AdminTurnedDevOps/Interview-Prep.git

RUN cd /build/Interview-Prep/app && go build

EXPOSE 8080

ENTRYPOINT [ "/build/Interview-Prep/app/app" ]
