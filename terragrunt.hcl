remote_state {
  backend = "azurerm"
  config = {
    storage_account_name   = getenv("AZURE_STORAGE_ACCOUNT_NAME")
    container_name         = getenv("AZURE_CONTAINER_NAME")
    key                    = "${basename(get_parent_terragrunt_dir())}/${path_relative_to_include()}.tfstate"
    resource_group_name    = getenv("AZURE_RESOURCE_GROUP_NAME")
    subscription_id        = getenv("AZURE_SUBSCRIPTION_ID")
    tenant_id              = getenv("AZURE_TENANT_ID")
    client_id              = getenv("AZURE_CLIENT_ID")
    client_secret          = getenv("AZURE_CLIENT_SECRET")
  }
}