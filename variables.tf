variable "organization_role_users_lookup" {
  description = <<EOT
Map of organization_role_users_lookup, attributes below
Required:
    - role_id
EOT

  type = map(object({
    role_id = number
  }))
}

