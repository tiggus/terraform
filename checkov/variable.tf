variable "checkov_bucket" {
  default = "checkov"
  description = "the name of the checkov bucket"
  type    = string
}

variable "checkov_acl" {
  default = "private"
  type    = string
}

variable "checkov_toggle" {
  default = "false"
  type    = string
}
