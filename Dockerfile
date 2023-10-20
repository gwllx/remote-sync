FROM alpine:3.18.4

# Install rsync
RUN apk add --no-cache rsync

# Install entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
