output "id" {
  description = "The identifier of the resource."
  value       = oci_identity_domains_identity_propagation_trust.this.id
}

output "name" {
  description = "The name of the resource."
  value       = oci_identity_domains_identity_propagation_trust.this.name
}

output "ocid" {
  description = "The ocid of the resource."
  value       = oci_identity_domains_identity_propagation_trust.this.ocid
}

output "validate_configuration" {
  description = "Validation guard for drift-prone identity propagation trust combinations."
  value       = null
  precondition {
    condition     = length(var.impersonation_service_users) == 0 || length(var.attribute_sets) > 0 || var.attributes != null
    error_message = "When impersonation_service_users is set, also set attribute_sets or attributes to avoid known provider drift on oci_identity_domains_identity_propagation_trust."
  }
}
