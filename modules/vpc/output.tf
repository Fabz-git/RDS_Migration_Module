output "vpc_id" { value = aws_vpc.main.id }

output "db_subnet_group_name" { value = aws_db_subnet_group.db_subnet_group.name }


output "subnet_ids" {
  description = "List of subnet IDs for the RDS subnet group"
  value       = aws_subnet.subnet[*].id
}
