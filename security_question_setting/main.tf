resource "oci_identity_domains_security_question_setting" "this" {
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  external_id                  = var.external_id
  idcs_endpoint                = var.idcs_endpoint
  max_field_length             = var.max_field_length
  min_answer_length            = var.min_answer_length
  num_questions_to_ans         = var.num_questions_to_ans
  num_questions_to_setup       = var.num_questions_to_setup
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  security_question_setting_id = var.security_question_setting_id
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
}
