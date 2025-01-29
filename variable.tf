variable "default_tags" {
  default = {
    caller = "terraform"
  }
  description = "resource tags"
  type        = map(string)
}

variable "endpoint" {
  type    = string
  default = "https://localhost:3939"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}
