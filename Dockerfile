FROM alpine:3.21

RUN apk add --no-cache curl

# ENTRYPOINT
COPY entrypoint /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint