output "managed_groups" {
  value = [
    for group in azuread_group.group : {
      group_id      = group.object_id
      group_members = group.members
    }
  ]
  description = "Managed Active Directory groups and members ids"
}