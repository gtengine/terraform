########## public subnets ##########
resource "aws_subnet" "caryak-public-subnet1" {
  depends_on = [
    aws_vpc.caryak-vpc
  ]

  assign_ipv6_address_on_creation = "false"
  cidr_block = "172.32.0.0/20"
  enable_dns64 = "false"
  enable_resource_name_dns_a_record_on_launch = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native = "false"
  map_public_ip_on_launch = "true"
  private_dns_hostname_type_on_launch = "ip-name"

  tags = {
    Name = "caryak-public-subnet1"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
    "kubernetes.io/role/elb" = 1
  }

  tags_all = {
    Name = "caryak-public-subnet1"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
    "kubernetes.io/role/elb" = 1
  }

  vpc_id = aws_vpc.caryak-vpc.id
  availability_zone = "${var.aws_region}a"
}

resource "aws_subnet" "caryak-public-subnet2" {
  depends_on = [
    aws_vpc.caryak-vpc
  ]

  assign_ipv6_address_on_creation = "false"
  cidr_block = "172.32.16.0/20"
  enable_dns64 = "false"
  enable_resource_name_dns_a_record_on_launch = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native = "false"
  map_public_ip_on_launch = "true"
  private_dns_hostname_type_on_launch = "ip-name"

  tags = {
    Name = "caryak-public-subnet2"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
    "kubernetes.io/role/elb" = 1
  }

  tags_all = {
    Name = "caryak-public-subnet2"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
    "kubernetes.io/role/elb" = 1
  }

  vpc_id = aws_vpc.caryak-vpc.id
  availability_zone = "${var.aws_region}b"
}

########## private subnets ##########
resource "aws_subnet" "caryak-private-subnet1" {
  depends_on = [
    aws_vpc.caryak-vpc
  ]

  assign_ipv6_address_on_creation = "false"
  cidr_block = "172.32.32.0/20"
  enable_dns64 = "false"
  enable_resource_name_dns_a_record_on_launch = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native = "false"
  map_public_ip_on_launch = "false"
  private_dns_hostname_type_on_launch = "ip-name"

  tags = {
    Name = "caryak-private-subnet1"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
  }

  tags_all = {
    Name = "caryak-private-subnet1"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.caryak-vpc.id
  availability_zone = "${var.aws_region}a"
}

resource "aws_subnet" "caryak-private-subnet2" {
  depends_on = [
    aws_vpc.caryak-vpc
  ]

  assign_ipv6_address_on_creation = "false"
  cidr_block = "172.32.48.0/20"
  enable_dns64 = "false"
  enable_resource_name_dns_a_record_on_launch = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native = "false"
  map_public_ip_on_launch = "false"
  private_dns_hostname_type_on_launch = "ip-name"

  tags = {
    Name = "caryak-private-subnet2"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
  }

  tags_all = {
    Name = "caryak-private-subnet2"
    "kubernetes.io/cluster/caryak-eks-cluster" = "shared"
  }

  vpc_id = aws_vpc.caryak-vpc.id
  availability_zone = "${var.aws_region}b"
}