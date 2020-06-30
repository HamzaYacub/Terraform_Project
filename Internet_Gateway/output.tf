output "gw_id" {
  description = "Gateway Id for internet gateway"
  value       = "${aws_internet_gateway.netflix_igw.id}"
}