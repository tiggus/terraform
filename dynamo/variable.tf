variable "default_tags" {
  default = {
    caller = "terraform-module"
  }
  description = "resource tags"
  type        = map(string)
}