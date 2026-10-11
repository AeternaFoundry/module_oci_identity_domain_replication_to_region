output "identity_domain_replication_to_regions_id" {
  description = "Map of id values across all identity_domain_replication_to_regions, keyed the same as var.identity_domain_replication_to_regions except keys with no id are omitted"
  value       = { for k, v in oci_identity_domain_replication_to_region.identity_domain_replication_to_regions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_domain_replication_to_regions_domain_id" {
  description = "Map of domain_id values across all identity_domain_replication_to_regions, keyed the same as var.identity_domain_replication_to_regions except keys with no domain_id are omitted"
  value       = { for k, v in oci_identity_domain_replication_to_region.identity_domain_replication_to_regions : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "identity_domain_replication_to_regions_replica_region" {
  description = "Map of replica_region values across all identity_domain_replication_to_regions, keyed the same as var.identity_domain_replication_to_regions except keys with no replica_region are omitted"
  value       = { for k, v in oci_identity_domain_replication_to_region.identity_domain_replication_to_regions : k => v.replica_region if v.replica_region != null && length(v.replica_region) > 0 }
}

