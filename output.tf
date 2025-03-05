
output "rds_endpoints" {
  description = "The endpoints of the restored RDS instances"
  value       = aws_db_instance.rds[*].endpoint
}

output "rds_vpc_id" {
  description = "The VPC ID where the RDS is deployed"
  value       = aws_vpc.main.id
}

output "rds_security_group" {
  description = "The Security Group ID attached to RDS"
  value       = aws_security_group.rds_sg.id
}
