resource "aws_db_instance" "rds" {
  for_each = { for instance in var.db_instances : instance.identifier => instance }

  identifier            = each.value.identifier
  instance_class        = each.value.instance_class
  snapshot_identifier   = each.value.snapshot_identifier
  

  db_subnet_group_name = var.db_subnet_group_name
  vpc_security_group_ids = var.db_security_group_ids
  multi_az              = true
  publicly_accessible   = false
  storage_encrypted     = true
  skip_final_snapshot   = true

  tags = {
    Name = each.value.identifier
  }
}





