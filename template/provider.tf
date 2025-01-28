terraform {

  required_version = "~> 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = merge(
      var.default_tags
    )
  }
}
