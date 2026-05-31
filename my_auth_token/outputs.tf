output "id" {
  description = "The identifier of the resource."
  value       = oci_identity_domains_my_auth_token.this.id
}

output "ocid" {
  description = "The ocid of the resource."
  value       = oci_identity_domains_my_auth_token.this.ocid
}

output "status" {
  description = "The current status of the resource."
  value       = oci_identity_domains_my_auth_token.this.status
}
