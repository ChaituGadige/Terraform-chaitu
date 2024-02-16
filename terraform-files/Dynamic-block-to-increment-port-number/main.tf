provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}
resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_security_group" "example" {
  name        = "Test"
  description = "Example security group"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

(*   dynamic "ingress" {
    for_each = [8080,8090,8090,1234,5676,8045,6543,7216,2711,2257]

    content {
      from_port   =  ingress.key
      to_port     =  ingress.key
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  } *)
  
  dynamic "ingress" {
    for_each = range(10)

    content {
      from_port   = 8080 + ingress.key
      to_port     = 8080 + ingress.key
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
