
module "networking" {
  source             = "./vpc.tf"
  vpc_cidr          = var.vpc_cidr
  subnet_cidrs      = var.subnet_cidrs
  availability_zones = var.availability_zones
}

module "security" {
  source               = "./security_groups.tf"
  vpc_id               = module.networking.vpc_id
  db_security_group_ids = var.db_security_group_ids
}

module "rds" {
  source                 = "./rds.tf"
  db_identifier          = var.db_identifier
  db_instance_class      = var.db_instance_class
  db_snapshot_identifier = var.db_snapshot_identifier
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = module.security.db_security_group_ids
}
