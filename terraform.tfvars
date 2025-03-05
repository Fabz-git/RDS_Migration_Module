
aws_region = "us-east-1"

vpc_cidr = "10.2.0.0/16"

db_instances = [
  { identifier = "claims-api", snapshot_identifier = "claims-api-snapshot", instance_class = "db.t3.medium" },
  { identifier = "claims-api-database", snapshot_identifier = "claims-api-database-snapshot", instance_class = "db.m6g.4xlarge" },
  { identifier = "pay-database", snapshot_identifier = "pay-database_snapshot", instance_class = "db.t4g.micro" }
]

db_subnet_group_name = "rds-subnet-group"

db_security_group_ids = ["sg-0123456789abcdef"]

subnet_cidrs = ["10.2.1.0/16", "10.2.2.0/16", "10.2.3.0/16", "10.2.4.0/16", "10.2.5.0/16", "10.2.6.0/16"]

availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

