FROM alpine:latest

RUN apk --no-cache add bitlbee

RUN mkdir /bitlbee
RUN addgroup bitlbee
RUN adduser -D -H -s /bin/sh -G bitlbee bitlbee

COPY run /sbin/run
RUN chmod +x /sbin/run

EXPOSE 6667
ENTRYPOINT ["/sbin/run"]
