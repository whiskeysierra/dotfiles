# Plugin for senza (http://docs.stups.io/en/latest/components/senza.html)
# Creates aliases to switch between regions more easily.

function region() {
    alias $1="export AWS_DEFAULT_REGION=$2"
}

region central eu-central-1
region west eu-west-1

west