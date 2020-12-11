FROM alpine:3.12
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
RUN apk update
RUN apk add openssh
RUN apk add lftp
ENTRYPOINT ["/entrypoint.sh"]
