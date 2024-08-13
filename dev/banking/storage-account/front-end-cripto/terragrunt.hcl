terraform {
  source = "github.com/Nicodemos305/azure-floripa-tf-storage-account-module?ref=main"

    extra_arguments "custom_vars" { 
      commands = ["apply", "console", "destroy", "import", "plan", "push", "refresh"] 
      arguments = [ 
        "-var-file=${get_terragrunt_dir()}/local.tfvars", 
      ] 
    } 
}

 include { 
    path = find_in_parent_folders() 
  }