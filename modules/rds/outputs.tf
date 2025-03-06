output "rds_endpoints" {
  value = { for k, v in aws_db_instance.rds : k => v.endpoint }  
}

