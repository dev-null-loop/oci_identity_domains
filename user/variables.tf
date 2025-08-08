variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "user_name" {
  description = "(Required) (Updatable) User name"
  type        = string
}

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Description of the user"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) Display name"
  type        = string
  default     = null
}
