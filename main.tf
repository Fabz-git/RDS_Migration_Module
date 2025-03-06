
module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  subnet_cidrs         = var.subnet_cidrs
  availability_zones   = var.availability_zones
  db_subnet_group_name = var.db_subnet_group_name
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "rds" {
  source                 = "./modules/rds"
  db_instances           = var.db_instances
  db_subnet_group_name   = module.vpc.db_subnet_group_name
  vpc_security_group_ids = [module.security.rds_security_group_id]
  db_security_group_ids = [module.security.rds_security_group_id]
  subnet_ids             = module.vpc.subnet_ids
}


module "backend" {
  source              = "./modules/backend"
  s3_bucket_name      = "terraform-state-bucket"
  dynamodb_table_name = "terraform-lock-table"
  iam_role_name       = "TerraformBackendRole"
 }


