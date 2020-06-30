output "vpc_id" {
  value = "${aws_vpc.netflix_vpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.netflix_subnet.id}"
}