variable "db_instances" { type = list(object({ identifier = string, snapshot_identifier = string, instance_class = string })) }
variable "db_subnet_group_name" { type = string }
variable "vpc_security_group_ids" { type = list(string) }

