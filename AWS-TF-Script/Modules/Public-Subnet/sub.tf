provider "aws" {
  region = var.aws_region
}
resource "aws_subnet" "public1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = var.subnet1_az
  tags = {
    Name = "Rishi-public-1"
  }
}
output "public1" {
  value = aws_subnet.public1.id
}
