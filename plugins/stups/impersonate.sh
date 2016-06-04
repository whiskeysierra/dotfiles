#!/bin/sh -e

: ${1?"Usage: $0 <application>"}

APPLICATION=$1
CREDENTIALS=$(mktemp -d)
ACCOUNT_ID=$(mai list --output json | \
jq -r --arg account "$(cat ~/.config/mai/last_update.yaml | sed -E 's/.*profile: *([^,}]+).*/\1/')" '.[] | select(.name == $account) | .role' | \
grep -oE '[0-9]+')

trap "rm -rf ${CREDENTIALS}" EXIT INT TERM

berry --application-id ${APPLICATION} --mint-bucket zalando-stups-mint-$ACCOUNT_ID-eu-west-1 --once ${CREDENTIALS}

OAUTH2_ACCESS_TOKEN_URL=https://token.services.auth.zalando.com/oauth2/access_token?realm=/services \
CREDENTIALS_DIR=${CREDENTIALS} \
zign token --name ${APPLICATION} $@

