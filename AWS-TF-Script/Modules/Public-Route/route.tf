provider "aws" {
  region = var.aws_region
}

#For Creating Route Table

resource "aws_route_table" "main-public" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.ig_id
  }
  tags = {
    Name = "Main-public-1"
  }
}

#For Assosiating Route Table

resource "aws_route_table_association" "main-public-1-a" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.main-public.id
}