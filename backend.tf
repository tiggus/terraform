terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "terraform-bucket"
#     key            = "terraform.tfstate"
#     dynamodb_table = "terraform-state-lock"
#     encrypt        = true
#     region         = "eu-west-2"
#   }
# }
