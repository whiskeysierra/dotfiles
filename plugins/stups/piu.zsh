# Plugin for piu (http://docs.stups.io/en/latest/components/piu.html)
# Automatically selects the correct odd host based on the current account and region.

# TODO this should be free from zalando specifics
# TODO contrary to what the sources may suggest, piu is not honoring the PIU_USER variable
alias piu='ODD_HOST="odd-$AWS_DEFAULT_REGION.$(account).zalan.do" USER=$PIU_USER piu $*'
alias gotthard='ODD_HOST="odd-$AWS_DEFAULT_REGION.$(account).zalan.do" USER=$PIU_USER gotthard --reason "DB access" $*'
