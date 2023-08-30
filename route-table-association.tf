########## public subnet route table association ##########
resource "aws_route_table_association" "caryak-route-association-pub-sub1" {
  route_table_id = aws_route_table.caryak-route-table-pub-sub1.id
  subnet_id = aws_subnet.caryak-public-subnet1.id
}

resource "aws_route_table_association" "caryak-route-association-pub-sub2" {
  route_table_id = aws_route_table.caryak-route-table-pub-sub2.id
  subnet_id = aws_subnet.caryak-public-subnet2.id
}

########## private subnet route table association ##########
resource "aws_route_table_association" "caryak-route-association-pri-sub1" {
  route_table_id = aws_route_table.caryak-route-table-pri-sub1.id
  subnet_id = aws_subnet.caryak-private-subnet1.id
}

resource "aws_route_table_association" "caryak-route-association-pri-sub2" {
  route_table_id = aws_route_table.caryak-route-table-pri-sub2.id
  subnet_id = aws_subnet.caryak-private-subnet2.id
}