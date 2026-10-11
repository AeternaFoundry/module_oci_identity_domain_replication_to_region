variable "identity_domain_replication_to_regions" {
  description = <<EOT
Map of identity_domain_replication_to_regions, attributes below
Required:
    - domain_id
Optional:
    - replica_region
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    domain_id      = string
    replica_region = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

