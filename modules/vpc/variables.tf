variable "vpc_cidr" { type = string }
variable "subnet_cidrs" { type = list(string) }
variable "availability_zones" { type = list(string) }
variable "db_subnet_group_name" { type = string }

