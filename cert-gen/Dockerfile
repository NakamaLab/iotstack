FROM alpine:3.17
#
# Add packages
#
RUN apk add --no-cache \
  openssl

ENV ENTRYPOINT_QUIET_LOGS = 0
RUN mkdir /docker-entrypoint.d
COPY docker-entrypoint.sh /

CMD ["/docker-entrypoint.sh"]
