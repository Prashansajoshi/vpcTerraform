#public_route_table
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.prashansa_terraform_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prashansa_gw.id
  }
  tags = {
    Name = "public-route-table"
  }
}
#private_route_table
resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.prashansa_terraform_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.prashansa_nat.id
  }
  tags = {
    Name = "private-route-table"
  }
}

#public_subnet_association
resource "aws_route_table_association" "public_subnet_association" {
  count          = length(var.public_subnets)
  subnet_id      = element(aws_subnet.public_subnet[*].id, count.index)
  route_table_id = aws_route_table.public-route-table.id
}
#private_subnet_association
resource "aws_route_table_association" "private_subnet_association" {
  count          = length(var.private_subnets)
  subnet_id      = element(aws_subnet.private_subnet[*].id, count.index)
  route_table_id = aws_route_table.private-route-table.id
}