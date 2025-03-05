resource "aws_db_instance" "this" {
  count                  = length(var.db_instances)
  identifier             = var.db_instances[count.index].identifier
  instance_class         = var.db_instances[count.index].instance_class
  snapshot_identifier    = var.db_instances[count.index].snapshot_identifier
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  multi_az               = true
  publicly_accessible    = false
  storage_encrypted      = true
  skip_final_snapshot    = true
}

