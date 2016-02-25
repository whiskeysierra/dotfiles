alias postgres-start='(cd $POSTGRES_BOX_PATH && vagrant up)'
alias postgres-stop='(cd $POSTGRES_BOX_PATH && vagrant halt)'
alias postgres-restore='(cd $POSTGRES_BOX_PATH && vagrant snapshot go clean)'
alias postgres-reinstall='(cd $POSTGRES_BOX_PATH && vagrant destroy -f && git pull && postgres-start && vagrant snapshot take clean)'