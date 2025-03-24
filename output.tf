output "db_endpoint" {
  value = aws_db_instance.rds_instance.address
}

output "db_port" {
  description = "A porta de acesso ao banco de dados"
  value       = aws_db_instance.rds_instance.port
}
