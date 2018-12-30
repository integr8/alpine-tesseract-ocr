FROM alpine:3.8
LABEL maintainer="Fábio Luciano <fabio@naoimporta.com>"

ADD files/entrypoint.sh /usr/local/bin/

RUN apk add tesseract-ocr tesseract-ocr-data-por \
    && chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /data
VOLUME [ "/data" ]

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]