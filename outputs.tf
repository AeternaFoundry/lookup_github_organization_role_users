output "organization_role_users_lookup_id" {
  description = "Map of id values across all organization_role_users_lookup, keyed the same as var.organization_role_users_lookup"
  value       = { for k, v in data.github_organization_role_users.organization_role_users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_role_users_lookup_role_id" {
  description = "Map of role_id values across all organization_role_users_lookup, keyed the same as var.organization_role_users_lookup"
  value       = { for k, v in data.github_organization_role_users.organization_role_users_lookup : k => v.role_id if v.role_id != null }
}
output "organization_role_users_lookup_users" {
  description = "Map of users values across all organization_role_users_lookup, keyed the same as var.organization_role_users_lookup"
  value       = { for k, v in data.github_organization_role_users.organization_role_users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

