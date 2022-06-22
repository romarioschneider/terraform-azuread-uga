terraform {
  required_version = ">= 1.1.7"
  cloud {
    organization = "org_name"
    workspaces {
      name = "workspace_name"
    }
  }

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "= 2.22.0"
    }
  }
}