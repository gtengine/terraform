resource "aws_vpc" "caryak-vpc" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block = "172.32.0.0/16"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"
  instance_tenancy = "default"

  tags = {
    Name = "caryak-vpc"
  }

  tags_all = {
    Name = "caryak-vpc"
  }

}