resource "aws_db_instance" "rds_instance" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "postgres"
  engine_version         = "13.15"
  instance_class         = "db.t3.micro"
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  vpc_security_group_ids = [aws_security_group.rds_sg_rule.id]
  publicly_accessible    = true
  skip_final_snapshot    = true
}
