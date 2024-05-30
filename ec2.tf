resource "aws_instance" "prashansa-ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet[0].id
  key_name                    = var.key_name
  associate_public_ip_address = "true"

  tags = {
    Name        = "prashansa-ec2"
    owner       = "prashansa.joshi"
    silo        = "intern2"
    environment = "dev"
    terraform   = "true"
  }
}