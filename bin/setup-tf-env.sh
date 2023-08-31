export TF_CLI_ARGS_apply="-var-file $HOME/Projects/infrastructure/infrastructure/GLOBAL.tfvars.json -var-file $HOME/Projects/infrastructure/infrastructure/budgets.tfvars.json"
export TF_CLI_ARGS_destroy="-var-file $HOME/Projects/infrastructure/infrastructure/GLOBAL.tfvars.json -var-file $HOME/Projects/infrastructure/infrastructure/budgets.tfvars.json"
export TF_CLI_ARGS_import="-var-file $HOME/Projects/infrastructure/infrastructure/GLOBAL.tfvars.json -var-file $HOME/Projects/infrastructure/infrastructure/budgets.tfvars.json"
export TF_CLI_ARGS_plan="-var-file $HOME/Projects/infrastructure/infrastructure/GLOBAL.tfvars.json -var-file $HOME/Projects/infrastructure/infrastructure/budgets.tfvars.json"
export TF_CLI_ARGS_refresh="-var-file $HOME/Projects/infrastructure/infrastructure/GLOBAL.tfvars.json -var-file $HOME/Projects/infrastructure/infrastructure/budgets.tfvars.json"
export API_DATA_IS_SENSITIVE=true

export TF_VAR_opsgenie_api_key=fake
export TF_VAR_cortex_xdr_agent_version=
export TF_VAR_cortex_xdr_distribution_id=
export TF_VAR_cortex_xdr_docker_config_password=
export TF_VAR_cortex_xdr_docker_config_auth=
