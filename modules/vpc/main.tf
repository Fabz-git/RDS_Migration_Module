resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "new-rds-vpc"
  }
}

resource "aws_subnet" "this" {
  count             = length(var.subnet_cidrs)
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]
}

resource "aws_db_subnet_group" "this" {
  name       = var.db_subnet_group_name
  subnet_ids = aws_subnet.this[*].id

  tags = {
    Name = var.db_subnet_group_name
  }
}

