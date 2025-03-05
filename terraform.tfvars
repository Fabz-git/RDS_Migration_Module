
aws_region = "us-east-1"

vpc_cidr = "10.2.0.0/16"

db_instances = [
  { identifier = "claims-api-new", snapshot_identifier = "claims-api-snapshot", instance_class = "db.t3.medium" },
  { identifier = "claims-api-database-new", snapshot_identifier = "claims-api-database-snapshot", instance_class = "db.m6g.4xlarge" },
  { identifier = "pay-database-new", snapshot_identifier = "pay-database-snapshot", instance_class = "db.t4g.micro" }
]

db_subnet_group_name = "rds-subnet-group"


subnet_cidrs = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24", "10.2.4.0/24", "10.2.5.0/24", "10.2.6.0/24"]

availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1a", "us-east-1b", "us-east-1c"]


