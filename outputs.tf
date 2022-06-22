output "managed_groups" {
  value = {
    for group, members in azuread_group.group: group.object_id => group.members }
  description = "Managed Active Directory groups and members ids"
}