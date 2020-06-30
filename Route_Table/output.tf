output "rt_id" {
  description = "Id for route table"
  value       = "${aws_route_table.netflix_rt.id}"
}