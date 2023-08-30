########## public subnet route table ##########
resource "aws_route_table" "caryak-route-table-pub-sub1" {
  depends_on = [
    aws_vpc.caryak-vpc,
    aws_internet_gateway.caryak-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.caryak-internet-gateway.id
  }

  tags = {
    Name = "caryak-route-table-pub-sub1"
  }

  tags_all = {
    Name = "caryak-route-table-pub-sub1"
  }

  vpc_id = aws_vpc.caryak-vpc.id
}

resource "aws_route_table" "caryak-route-table-pub-sub2" {
  depends_on = [
    aws_vpc.caryak-vpc,
    aws_internet_gateway.caryak-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.caryak-internet-gateway.id
  }

  tags = {
    Name = "caryak-route-table-pub-sub2"
  }

  tags_all = {
    Name = "caryak-route-table-pub-sub2"
  }

  vpc_id = aws_vpc.caryak-vpc.id
}

########## private subnet route table ##########
resource "aws_route_table" "caryak-route-table-pri-sub1" {
  depends_on = [
    aws_vpc.caryak-vpc,
    aws_nat_gateway.caryak-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.caryak-nat-gateway.id
  }

  tags = {
    Name = "caryak-route-table-pri-sub1"
  }

  tags_all = {
    Name = "caryak-route-table-pri-sub1"
  }

  vpc_id = aws_vpc.caryak-vpc.id
}

resource "aws_route_table" "caryak-route-table-pri-sub2" {
  depends_on = [
    aws_vpc.caryak-vpc,
    aws_nat_gateway.caryak-nat-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.caryak-nat-gateway.id
  }

  tags = {
    Name = "caryak-route-table-pri-sub2"
  }

  tags_all = {
    Name = "caryak-route-table-pri-sub2"
  }

  vpc_id = aws_vpc.caryak-vpc.id
}