resource "aws_nat_gateway" "caryak-nat-gateway" {
  depends_on = [
    aws_eip.caryak-elastic-ip
  ]

  allocation_id = aws_eip.caryak-elastic-ip.id
  subnet_id = aws_subnet.caryak-public-subnet2.id
  connectivity_type = "public"

  tags = {
    Name = "caryak-nat-gateway"
  }

  tags_all = {
    Name = "caryak-nat-gateway"
  }
}