
variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the new VPC"
  type        = string
}

variable "db_instances" {
  description = "List of RDS instances to restore from snapshots with their instance types"
  type = list(object({
    identifier          = string
    snapshot_identifier = string
    instance_class      = string
  }))
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
}

