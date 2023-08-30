provider "aws" {
  region = var.aws_region
}
resource "aws_subnet" "private1" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet2_cidr
  map_public_ip_on_launch = "true"
  availability_zone = var.subnet2_az
  tags = {
    Name = "Rishi-private-1"
  }
}
output "private1" {
  value = aws_subnet.private1.id
}
