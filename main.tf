terraform {

  required_version = ">= 1.0.0"

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "allan-barreto"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "allan-barreto"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

}