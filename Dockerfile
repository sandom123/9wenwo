FROM golang
RUN mkdir -p /go/src/GoAdmin
WORKDIR /go/src/GoAdmin
COPY . /go/src/GoAdmin
CMD ["go-wrapper", "run"]
ONBUILD COPY . /go/src/GoAdmin
ONBUILD RUN go-wrapper download
ONBUILD RUN go-wrapper install
RUN go get github.com/astaxie/beego
RUN go get -d -v
RUN go install -v
