FROM docker

WORKDIR /app

COPY ./builder.sh .

RUN docker login -u username -p password

RUN apk add git

ENTRYPOINT [ "/app/builder.sh" ]
