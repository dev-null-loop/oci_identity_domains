output "id" {
  description = "Unique identifier for the SCIM Resource as defined by the Service Provider. Each representation of the Resource MUST include a non-empty id value. This identifier MUST be unique across the Service Provider's entire set of Resources. It MUST be a stable, non-reassignable identifier that does not change when the same Resource is returned in subsequent requests. The value of the id attribute is always issued by the Service Provider and MUST never be specified by the Service Consumer. bulkId: is a reserved keyword and MUST NOT be used in the unique identifier."
  value       = oci_identity_domains_user.this.id
}

# data "oci_identity_domains" "these" {
#   compartment_id = "ocid1.tenancy.oc1..aaaaaaaafvbrqwizb2l62d7o46h622ibhfp2at56cfjxak7x3jqgh42ligrq"
#   # display_name       = var.domain_display_name
#   # home_region_url    = var.domain_home_region_url
#   # is_hidden_on_login = var.domain_is_hidden_on_login
#   # license_type       = var.domain_license_type
#   # name               = var.domain_name
#   # state              = var.domain_state
#   # type               = var.domain_type
#   # url                = var.domain_url
# }

# output "identity_domains" {
#   value = [for id in data.oci_identity_domains.these.domains : {
#     "name" = id.display_name
#     "id"   = id.id
#     }
#   ]
# }

# data "oci_identity_domain" "default" {
#   domain_id = "ocid1.domain.oc1..aaaaaaaa3fcnqkqeotycnims7lfpptn2qlop2im2qgaqprjl2d3lt3qtmyyq"
# }

# # data "oci_identity_tenancy" "oci" {
# #   tenancy_id = "ocid1.tenancy.oc1..aaaaaaaarhhnt22zf5wrn7opccajfp7myshfudogi4ysbjjqx3dopms7rzqq"
# # }

# output "default" {
#   value = data.oci_identity_domain.default.url
# }
