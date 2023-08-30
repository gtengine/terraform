resource "aws_internet_gateway" "caryak-internet-gateway" {
  depends_on = [
    aws_vpc.caryak-vpc
  ]

  vpc_id = aws_vpc.caryak-vpc.id
}