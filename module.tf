module "api" {
  source = "./api/dynamic"
  default_tags = var.default_tags
}

# module "dynamo" {
#   source = "./dynamo"
#   default_tags = var.default_tags
# }
