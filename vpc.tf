resource "aws_vpc" "prashansa_terraform_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "prashansa_terraform_vpc"
  }
}
