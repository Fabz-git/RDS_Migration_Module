resource "aws_security_group" "rds_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/16"]  # Should not be accessible over the internet. Change this as needed
  }

  tags = {
    Name = "rds-security-group"
  }
}
