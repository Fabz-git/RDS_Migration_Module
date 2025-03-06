variable "db_instances" { type = list(object({ identifier = string, snapshot_identifier = string, instance_class = string })) }

variable "vpc_security_group_ids" { type = list(string) }

variable "db_security_group_ids" {
  description = "List of security group IDs for the RDS instances"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}



