variable "storage_account_name" {
  description = "Azure storage account name"
  type        = string
  default     = ""
}

variable "container_name" {
  description = "Azure container name"
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
  default     = ""
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = ""
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
  default     = ""
}

variable "client_id" {
  description = "Azure client ID"
  type        = string
  default     = ""
}

variable "client_secret" {
  description = "Azure client secret"
  type        = string
  default     = ""
}

remote_state {
  backend = "azurerm"
  config = {
    storage_account_name   = var.storage_account_name != "" ? var.storage_account_name : (get_env("AZURE_STORAGE_ACCOUNT_NAME"))
    container_name         = var.container_name != "" ? var.container_name : (get_env("AZURE_CONTAINER_NAME"))
    key                    = "${basename(get_parent_terragrunt_dir())}/${path_relative_to_include()}.tfstate"
    resource_group_name    = var.resource_group_name != "" ? var.resource_group_name : (get_env("AZURE_RESOURCE_GROUP_NAME"))
    subscription_id        = var.subscription_id != "" ? var.subscription_id : (get_env("AZURE_SUBSCRIPTION_ID"))
    tenant_id              = var.tenant_id != "" ? var.tenant_id : (get_env("AZURE_TENANT_ID"))
    client_id              = var.client_id != "" ? var.client_id : (get_env("AZURE_CLIENT_ID"))
    client_secret          = var.client_secret != "" ? var.client_secret : (get_env("AZURE_CLIENT_SECRET"))
  }
}