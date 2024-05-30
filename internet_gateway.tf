#internet_gateway
resource "aws_internet_gateway" "prashansa_gw" {
  vpc_id = aws_vpc.prashansa_terraform_vpc.id
  tags = {
    Name = "prashansa_gw"
  }
}