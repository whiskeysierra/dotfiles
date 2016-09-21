# Plugin for senza (http://docs.stups.io/en/latest/components/senza.html)
# Creates aliases to switch between regions more easily.

function region() {
    echo $AWS_DEFAULT_REGION
}

alias central='export AWS_DEFAULT_REGION=eu-central-1'
alias west='export AWS_DEFAULT_REGION=eu-west-1'

central

function terminate() {
    aws ec2 terminate-instances --instance-ids $(senza instances "$1" -o json | jq -r '.[] | .instance_id')
}