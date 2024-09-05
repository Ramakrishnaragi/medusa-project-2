resource "aws_db_subnet_group" "medusa_db_subnet_group" {
  name       = "medusa-db-subnet-group"
  subnet_ids = [aws_subnet.public_subnet1.id, aws_subnet.public_subnet2.id]
  tags = {
    Name = "medusa-db-subnet-group"
  }
}

resource "aws_db_instance" "medusa_db" {
  allocated_storage    = 20
  storage_type            = "gp2"
  engine               = "postgres"
  engine_version       = "16.4"
  instance_class       = "db.t3.micro"
  db_name              = "medusadb" 
  username             = var.db_username
  password             = var.db_password
  vpc_security_group_ids = [aws_security_group.ecs_sg.id]
  db_subnet_group_name    = aws_db_subnet_group.medusa_db_subnet_group.name
  skip_final_snapshot  = true
}
