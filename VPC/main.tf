resource "aws_vpc" "netflix_vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = var.dns_hostname

  tags = {
    Name = "vpc_netflix"
  }
}

resource "aws_subnet" "netflix_subnet" {
  cidr_block = var.public_cidr
  vpc_id     = "${aws_vpc.netflix_vpc.id}"

  tags = {
    Name = "netflix_subnet"
  }
}