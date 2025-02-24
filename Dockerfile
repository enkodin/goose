FROM alpine:3.21

RUN apk add --no-cache curl && curl -L https://github.com/pressly/goose/releases/download/v3.24.1/goose_linux_x86_64 > /usr/bin/goose && chmod +x /usr/bin/goose

# ENTRYPOINT
COPY entrypoint /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint
