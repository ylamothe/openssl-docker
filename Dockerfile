FROM alpine

MAINTAINER Maik Ellerbrock (https://github.com/ellerbrock)

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

COPY openssl.sh /usr/local/bin/openssl.sh
RUN chmod a+x /usr/local/bin/openssl.sh

ENTRYPOINT ["/usr/local/bin/openssl.sh"]
