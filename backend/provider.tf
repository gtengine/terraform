terraform {
  required_version = ">=1.5"
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  exclude_names = ["${var.aws_region}a", "${var.aws_region}b"]
}