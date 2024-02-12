resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.0.0/27"

  tags = {
    Name = "my_vpc_01"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.0.32/27"

  tags = {
    Name = "my_vpc_02"
  }
}

resource "aws_internet_gateway" "gate_way" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "my_gw"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vpc.id
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gate_way.id
  }

  tags = {
    Name = "my_route_table"
  }
}

