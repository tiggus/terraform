variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "default_tags" {
  default = {
    owner      = "terraform"
    created_by = "terraform"
  }
  description = "resource tags"
  type        = map(string)
}