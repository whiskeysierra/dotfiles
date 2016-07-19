#!/bin/sh -ex

RANDOM_IP=$(senza instances zmon-appliance --output json | jq --exit-status --raw-output '.[0].private_ip')
ACCOUNT=$(cat ~/.config/mai/last_update.yaml | sed -E 's/.*profile: *([^,}]+).*/\1/')

ODD_HOST="odd-$AWS_DEFAULT_REGION.$ACCOUNT.zalan.do" USER=${PIU_USER} piu ${RANDOM_IP} "Database access"

sleep 3

ssh -f -o ExitOnForwardFailure=yes -L 5432:localhost:5432 -ttA ${PIU_USER}@odd-${AWS_DEFAULT_REGION}.${ACCOUNT}.zalan.do \
ssh -L 5432:${DB_HOST}:5432 -o StrictHostKeyChecking=no ${PIU_USER}@${RANDOM_IP} sleep 10

sleep 2
reset
clear

psql "host=localhost port=5432 dbname=$DB_NAME user=$DB_USER sslmode=require password=$DB_PASSWORD" $@