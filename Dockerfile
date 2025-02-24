FROM alpine:3.21

RUN apk add --no-cache go && go install github.com/pressly/goose/v3/cmd/goose@latest

# ENTRYPOINT
COPY entrypoint /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint

# ENTRY
ENTRYPOINT [ "/usr/bin/entrypoint" ]
