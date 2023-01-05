#variable "aws_accesskey" {}
#variable "aws_secretkey" {}
variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws" {
# access_key = var.aws_accesskey
# secret_key = var.aws_secretkey

  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY


  region = "ap-northeast-1"

  default_tags {
    tags = {
      Environment = local.env
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

terraform {
  backend "remote" {
    organization = "mon-test-terraformcloud"

    workspaces {
      name = "tfc-test"
    }
  }
}
