resource "aws_db_subnet_group" "prashansa_rds" {
  name       = "prashansa_rds"
  subnet_ids = [aws_subnet.PrivateSub_prashansa_i.id, aws_subnet.PrivateSub_prashansa_ii.id]
}
resource "aws_db_instance" "prashansa_rds" {
  engine               = "mysql"
  identifier           = "prashansa-instance"
  allocated_storage    = "5"
  engine_version       = "8.0.32"
  instance_class       = "db.t2.micro"
  username             = "admin"
  password             = "admin123"
  db_subnet_group_name = aws_db_subnet_group.prashansa_rds.name
  skip_final_snapshot  = true
  publicly_accessible  = false
  tags = {
    "Name" = "prashansa_RDS"
    "owner" = "prashansa.joshi"
  }
}