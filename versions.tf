terraform {
  required_version = ">= 1.1.7"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "= 2.22.0"
    }
  }
}
