terraform {
  backend "s3" {
    bucket = "caryak-s3-tf-state"
    key = "terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "caryak-ddb-tf-lock"
    encrypt = "true"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

data "aws_availability_zones" "available" {
  exclude_names = ["${var.aws_region}a", "${var.aws_region}b"]
}