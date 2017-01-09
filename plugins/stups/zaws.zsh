# Plugin for mai (http://docs.stups.io/en/latest/components/mai.html)
# Creates one alias to login for every profile found in ~/.config/mai/mai.yaml

zaws list --output tsv | sed 1d | cut -d$'\t' -f2 | while read account; do
    alias $account="zaws require $account >/dev/null 2>&1";
done

function account() {
    cat ~/.config/zalando-aws-cli/zalando-aws-cli.yaml | grep account_name | sed -E 's/.*account_name: *([^,}]+).*/\1/'
}

function relog() {
    eval $(account)
}
