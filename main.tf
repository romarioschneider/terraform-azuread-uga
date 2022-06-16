data "azuread_groups" "existing_groups" {
  for_each       = var.assignments
  display_names  = [each.key]
  ignore_missing = true
}

data "azuread_group" "group_check" {
  for_each = {
    for k, r in var.assignments : k => r
    if length(data.azuread_groups.existing_groups[k].display_names) != 0
  }
  display_name = each.key
}

data "azuread_users" "users" {
  for_each             = var.assignments
  ignore_missing       = false
  user_principal_names = each.value.users
}

locals {

  should_be_created_and_kept = {
    for k, r in var.assignments : k => r
    if try(length(data.azuread_groups.existing_groups[k].object_ids) == 0, contains(data.azuread_groups.existing_groups[k].object_ids, data.azuread_group.group_check[k].object_id)) || try(data.azuread_group.group_check[k].description == "managed_by_terraform", false)
  }

}

resource "azuread_group" "group" {
  for_each         = local.should_be_created_and_kept
  display_name     = each.key
  security_enabled = true
  description      = "managed_by_terraform"
  members          = data.azuread_users.users[each.key].object_ids
}
