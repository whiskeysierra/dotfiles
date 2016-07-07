#!/bin/sh -ex

function clean-agents() {
    alias http="http --ignore-stdin"
    auth="Cookie:JSESSIONID=${GO_SESSION_ID}"

    http https://delivery.balance.zalan.do/go/api/agents "${auth}" | \
        jq -r 'map(select(.status == "LostContact")) | map(.uuid) | .[]' | \
        while read agent; do
            echo "Disabling $agent";
            http PATCH https://delivery.balance.zalan.do/go/api/agents/${agent} "${auth}" Accept:application/vnd.go.cd.v2+json agent_config_state=Disabled &> /dev/null
        done

    http https://delivery.balance.zalan.do/go/api/agents "${auth}" | \
        jq -r 'map(select(.status == "Disabled")) | map(.uuid) | .[]' | \
        while read agent; do
            echo "Deleting $agent";
            http DELETE https://delivery.balance.zalan.do/go/api/agents/${agent} "${auth}" &> /dev/null
        done
}