
resource "aws_db_instance" "rds" {
  count                 = length(var.db_instances)
  identifier            = var.db_instances[count.index].identifier
  instance_class        = var.db_instances[count.index].instance_class
  snapshot_identifier   = var.db_instances[count.index].snapshot_identifier
  db_subnet_group_name  = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = var.db_security_group_ids
  multi_az              = true
  publicly_accessible   = false
  storage_encrypted     = true
  skip_final_snapshot   = true

  tags = {
    Name = var.db_instances[count.index].identifier
  }
}
