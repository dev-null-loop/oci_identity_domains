# https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2
# data[?contains("display-name", 'your_text_here')]
# oci iam compartment list --all --query 'data[*]."defined-tags"."Oracle-Tags".CreatedBy'  && definedTags.value = 'default/bd@oracle.com'"
# data.resources[*]
# jq '.data.resources[] | select(."display-name" == "George")|.schemas'
# data[?contains("attribute-name", `myCustomName`)]
#      jq '.data.resources[]|select(."display-name" == "Marius")'
# --query 'data.resources[?"display-name" == `Marius`]' # WORKS
# --query 'data[?"display-name" == `lb001`]'

data "oci_identity_domains_users" "these" {
  idcs_endpoint = var.idcs_endpoint
  user_filter   = "displayName sw \"B\""
}

locals {
  users = { for user in data.oci_identity_domains_users.these.users[*] :
    (user.display_name) => user.id
  }
}

output "users" {
  value = { for user in data.oci_identity_domains_users.these.users[*] :
    (user.display_name) => user.id
  }
}

resource "oci_identity_domains_group" "this" {
  display_name  = var.display_name
  idcs_endpoint = var.idcs_endpoint
  schemas       = var.schemas
  dynamic "members" {
    for_each = try(var.members, [])
    content {
      type  = members.value.type
      value = local.users[members.value.value]
      ocid  = members.value.ocid
    }
  }
  non_unique_display_name      = var.non_unique_display_name
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  dynamic "tags" {
    for_each = var.tags[*]
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
    for_each = var.urnietfparamsscimschemasoracleidcsextension_oci_tags[*]
    iterator = i
    content {
      dynamic "defined_tags" {
	for_each = i.value.defined_tags
	content {
	  key       = defined_tags.value.key
	  namespace = defined_tags.value.namespace
	  value     = defined_tags.value.value
	}
      }
      dynamic "freeform_tags" {
	for_each = i.value.local.freeform_tags
	content {
	  key   = freeform_tags.value.key
	  value = freeform_tags.value.value
	}
      }
    }
  }
  # urnietfparamsscimschemasoracleidcsextensiondynamic_group {
  #   membership_rule = var.group_urnietfparamsscimschemasoracleidcsextensiondynamic_group_membership_rule
  #   membership_type = var.group_urnietfparamsscimschemasoracleidcsextensiondynamic_group_membership_type
  # }
  # urnietfparamsscimschemasoracleidcsextensiongroup_group {
  #   creation_mechanism = var.group_urnietfparamsscimschemasoracleidcsextensiongroup_group_creation_mechanism
  #   description        = var.group_urnietfparamsscimschemasoracleidcsextensiongroup_group_description
  #   owners {
  #     type  = var.group_urnietfparamsscimschemasoracleidcsextensiongroup_group_owners_type
  #     value = var.group_urnietfparamsscimschemasoracleidcsextensiongroup_group_owners_value
  #   }
  # }
  # urnietfparamsscimschemasoracleidcsextensionposix_group {
  #   gid_number = var.group_urnietfparamsscimschemasoracleidcsextensionposix_group_gid_number
  # }
  # urnietfparamsscimschemasoracleidcsextensionrequestable_group {
  #   requestable = var.group_urnietfparamsscimschemasoracleidcsextensionrequestable_group_requestable
  # }
}
