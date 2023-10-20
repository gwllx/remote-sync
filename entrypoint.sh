#!/bin/sh

# Configure SSH key
echo "$INPUT_KEY" > key
chmod u+rw,go-rwx key

# Run rsync
DEST="$INPUT_USER@$INPUT_HOST:$INPUT_TARGET"
SSH_CMD="ssh -o StrictHostKeyChecking=no -i key"

rsync $INPUT_ARGS -e "$SSH_CMD" "$GITHUB_WORKSPACE/$INPUT_SOURCE" "$DEST"
