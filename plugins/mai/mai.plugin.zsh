# Plugin for Mai (http://docs.stups.io/en/latest/components/mai.html)
# Creates one alias to login for every profile found in ~/.config/mai/mai.yaml

if [ -f ~/.config/mai/mai.yaml ]; then
    cat ~/.config/mai/mai.yaml | shyaml keys | while read account; do
        alias $account:t="mai login ${(q)account} > /dev/null 2>&1";
    done
fi