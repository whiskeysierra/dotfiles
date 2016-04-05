# Plugin for piu (http://docs.stups.io/en/latest/components/piu.html)
# Automatically selects the correct odd host based on the current account and region.

# TODO this should be free from zalando specifics
function _piu() {
    local name domain

    name=$(account)

    domain=$(\
        mai list -o tsv | \
        sed 1d | \
        grep -E "^$name	" | \
        cut -d$'\t' -f2 | \
        cut -d' ' -f4 | \
        grep -oE '[^():]+' | \
        sed -E 's/^zalando-//')
        
    # TODO contrary to what the sources may suggest, piu is not honoring the PIU_USER variable
    ODD_HOST="odd-$AWS_DEFAULT_REGION.$domain.zalan.do" USER=$PIU_USER piu $*
}

alias piu=_piu
