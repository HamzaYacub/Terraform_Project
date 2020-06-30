resource "aws_internet_gateway" "netflix_igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "Netflix IGW"
  }
}