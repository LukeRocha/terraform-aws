output "ec2_instance_id" {
  value = aws_instance.api_server.id
}

output "db_endpoint" {
  value = aws_db_instance.api_db.endpoint
}
