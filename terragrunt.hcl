remote_state {
  backend = "azurerm"
  config = {
    storage_account_name   = get_env("AZURE_STORAGE_ACCOUNT_NAME")
    container_name         = get_env("AZURE_CONTAINER_NAME")
    key                    = "${basename(get_parent_terragrunt_dir())}/${path_relative_to_include()}.tfstate"
    resource_group_name    = get_env("AZURE_RESOURCE_GROUP_NAME")
    subscription_id        = get_env("AZURE_SUBSCRIPTION_ID")
    tenant_id              = get_env("AZURE_TENANT_ID")
    client_id              = get_env("AZURE_CLIENT_ID")
    client_secret          = get_env("AZURE_CLIENT_SECRET")
  }
}
