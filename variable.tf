variable "default_tags" {
  default = {
    caller = "terraform"
  }
  description = "resource tags"
  type        = map(string)
}

variable "endpoint" {
  default = "https://localhost:3939"
  type    = string
}

variable "region" {
  default = "eu-west-1"
  type    = string
}

variable "checkov_bucket" {
  default = "checkov"
  type    = string
}
