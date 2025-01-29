variable "checkov_bucket" {
  default = "checkov"
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
