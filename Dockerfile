FROM alpine:3.18.4

# Install rsync
RUN apk add --no-cache openssh-client rsync

# Install entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
