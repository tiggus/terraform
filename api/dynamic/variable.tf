variable "default_tags" {
  default = {
    caller = "terraform-module"
  }
  description = "resource tags"
  type        = map(string)
}

variable "directory" {
  type    = string
  default = "json"
}

variable "endpoint" {
  type    = string
  default = "REGIONAL"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "stage" {
  type    = string
  default = "prod"
}
