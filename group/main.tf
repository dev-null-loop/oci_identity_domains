resource "oci_identity_domains_group" "this" {
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  display_name   = var.display_name
  external_id    = var.external_id
  force_delete   = var.force_delete
  idcs_endpoint  = var.idcs_endpoint
  dynamic "members" {
    for_each = var.members != null ? var.members : []
    iterator = me
    content {
      ocid  = me.value.ocid
      type  = me.value.type
      value = me.value.value
    }
  }
  non_unique_display_name      = var.non_unique_display_name
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
    for_each = var.urnietfparamsscimschemasoracleidcsextension_oci_tags[*]
    iterator = uot
    content {
      dynamic "defined_tags" {
        for_each = uot.value.defined_tags != null ? uot.value.defined_tags : []
        iterator = dt
        content {
          key       = dt.value.key
          namespace = dt.value.namespace
          value     = dt.value.value
        }
      }
      dynamic "freeform_tags" {
        for_each = uot.value.freeform_tags != null ? uot.value.freeform_tags : []
        iterator = ft
        content {
          key   = ft.value.key
          value = ft.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensiondynamic_group" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensiondynamic_group[*]
    iterator = ug
    content {
      membership_rule = ug.value.membership_rule
      membership_type = ug.value.membership_type
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensiongroup_group" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensiongroup_group[*]
    iterator = ug
    content {
      creation_mechanism = ug.value.creation_mechanism
      description        = ug.value.description
      dynamic "owners" {
        for_each = ug.value.owners != null ? ug.value.owners : []
        iterator = ow
        content {
          type  = ow.value.type
          value = ow.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionposix_group" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionposix_group[*]
    iterator = ug
    content {
      gid_number = ug.value.gid_number
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionrequestable_group" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionrequestable_group[*]
    iterator = ug
    content {
      requestable = ug.value.requestable
    }
  }
}
