terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }
  # makesure we below S3 and DynamoDB should be there
  backend "s3" {
    bucket         = "81s-remote-state-rama"
    key            = "expense-bastion"
    region         = "us-east-1"
    dynamodb_table = "81s-locking"

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}