
resource "aws_vpc" "claims_vpc_1" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "new-rds-vpc"
  }
}


resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.claims_vpc_1.id
  cidr_block        = var.subnet_cidrs[0]
  availability_zone = var.availability_zones[0]
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.claims_vpc_1.id
  cidr_block        = var.subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
}

resource "aws_subnet" "subnet3" {
  vpc_id            = aws_vpc.claims_vpc_1.id
  cidr_block        = var.subnet_cidrs[2]
  availability_zone = var.availability_zones[2]
}

resource "aws_subnet" "subnet4" {
  vpc_id            = aws_vpc.claims_vpc_1.id
  cidr_block        = var.subnet_cidrs[3]
  availability_zone = var.availability_zones[0]
}

resource "aws_subnet" "subnet5" {
  vpc_id            = aws_vpc.claims_vpc_1.id
  cidr_block        = var.subnet_cidrs[4]
  availability_zone = var.availability_zones[1]
}

resource "aws_subnet" "subnet6" {
  vpc_id            = aws_vpc.claims_vpc_1.id
  cidr_block        = var.subnet_cidrs[5]
  availability_zone = var.availability_zones[2]
}


resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = [
    aws_subnet.subnet1.id, aws_subnet.subnet2.id,
    aws_subnet.subnet3.id, aws_subnet.subnet4.id,
    aws_subnet.subnet5.id, aws_subnet.subnet6.id
  ]

  tags = {
    Name = var.db_subnet_group_name
  }
}