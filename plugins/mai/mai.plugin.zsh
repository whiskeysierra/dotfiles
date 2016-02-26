# Plugin for mai (http://docs.stups.io/en/latest/components/mai.html)
# Creates one alias to login for every profile found in ~/.config/mai/mai.yaml

mai list -o tsv | sed 1d | cut -d$'\t' -f1 | while read account; do
    alias $account="mai login $account";
done

function relog() {
    local account

    account=$(\
        cat ~/.config/mai/last_update.yaml | \
        sed -E 's/.*profile: *([^,}]+).*/\1/')

    mai login $account
}