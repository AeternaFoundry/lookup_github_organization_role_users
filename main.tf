data "github_organization_role_users" "organization_role_users_lookup" {
  for_each = var.organization_role_users_lookup

  role_id = each.value.role_id
}

