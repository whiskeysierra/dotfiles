# Plugin for mai (http://docs.stups.io/en/latest/components/mai.html)
# Creates one alias to login for every profile found in ~/.config/mai/mai.yaml

mai list -o tsv | sed 1d | cut -d$'\t' -f1 | while read account; do
    alias $account="mai login $account >/dev/null 2>&1";
done

function account() {
    cat ~/.config/mai/last_update.yaml | sed -E 's/.*profile: *([^,}]+).*/\1/'
}

function account_id() {
    mai list --output json | jq -r --arg account "$(account)" '.[] | select(.name == $account) | .role' | grep -oE '[0-9]+'
}
function relog() {
    eval $(account)
}