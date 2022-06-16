output "group_ids" {
  value = [
    for group in azuread_group.group : group.object_id
  ]
  description = "Managed Active Directory groups object ids"
}