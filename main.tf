resource "oci_identity_domain_replication_to_region" "identity_domain_replication_to_regions" {
  for_each = var.identity_domain_replication_to_regions

  domain_id      = each.value.domain_id
  replica_region = each.value.replica_region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

