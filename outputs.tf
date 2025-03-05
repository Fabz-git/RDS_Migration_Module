output "rds_endpoints" {
  description = "The endpoints of the restored RDS instances"
  value       = module.rds.rds_endpoints
}

output "rds_vpc_id" {
  description = "The VPC ID where the RDS is deployed"
  value       = module.vpc.vpc_id
}

output "rds_security_group" {
  description = "The Security Group ID attached to RDS"
  value       = module.security.db_security_group_id
}

