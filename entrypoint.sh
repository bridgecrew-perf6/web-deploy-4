#!/bin/sh -l

echo "welcome to sftp deploy!"
lftp -c "set sftp:auto-confirm yes ; open -u \"$INPUT_USER,$INPUT_PASSWORD\" \"$INPUT_HOST\" ; mirror -c -L -R -p -vvv $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"
