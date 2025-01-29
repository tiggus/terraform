terraform {

  required_version = "~> 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.1"
    }
  }
}

provider "aws" {
  access_key                  = "mock_access_key"
  region                      = var.region
  s3_use_path_style           = true
  secret_key                  = "mock_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = var.endpoint
    cloudformation = var.endpoint
    cloudwatch     = var.endpoint
    dynamodb       = var.endpoint
    es             = var.endpoint
    firehose       = var.endpoint
    iam            = var.endpoint
    kinesis        = var.endpoint
    lambda         = var.endpoint
    route53        = var.endpoint
    redshift       = var.endpoint
    s3             = var.endpoint
    secretsmanager = var.endpoint
    ses            = var.endpoint
    sns            = var.endpoint
    sqs            = var.endpoint
    ssm            = var.endpoint
    stepfunctions  = var.endpoint
    sts            = var.endpoint
  }
}
