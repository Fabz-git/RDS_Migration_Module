resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "claims_network_new"  
  }
}

resource "aws_subnet" "subnet" {
  count             = length(var.subnet_cidrs)
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index % length(var.availability_zones)]

  tags = {
    Name = "subnet-${count.index + 1}"
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = slice(aws_subnet.subnet[*].id, 0, 2)

  tags = {
    Name = var.db_subnet_group_name
  }
}


