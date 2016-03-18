alias pg-start='(cd $POSTGRES_BOX_PATH && vagrant up)'
alias pg-stop='(cd $POSTGRES_BOX_PATH && vagrant halt)'
alias pg-restore='(cd $POSTGRES_BOX_PATH && vagrant snapshot go clean)'
alias pg-reinstall='(cd $POSTGRES_BOX_PATH && vagrant destroy -f && vagrant plugin install vagrant-vbox-snapshot && pg-start && vagrant snapshot take clean)'