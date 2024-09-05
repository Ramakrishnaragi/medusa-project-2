resource "aws_db_instance" "medusa_db" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "16.4"
  instance_class       = "db.t3.micro"
  db_name              = "medusadb" 
  username             = var.db_username
  password             = var.db_password
  vpc_security_group_ids = [aws_security_group.ecs_sg.id]
  skip_final_snapshot  = true
}
