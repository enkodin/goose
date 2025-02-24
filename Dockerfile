FROM alpine:3.21

RUN apk add --no-cache go

# ENTRYPOINT
COPY entrypoint /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint

# ENTRY
ENTRYPOINT [ "/usr/bin/entrypoint" ]
