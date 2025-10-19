terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "akinfo-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    # dynamodb_table = "akinfo-remote-lock" # this is dedicated for state file locking instead use belwo 2 codes
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}