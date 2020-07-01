resource "aws_launch_template" "netflix" {
    name_prefix = "Netflix"
    image_id = "ami-08eebff62e61110b7"
    instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "netflix_paris" {
    availability_zones = ["eu-west-3a"]
    desired_capacity = 0
    max_size = 3
    min_size = 0

    launch_template {
        id = "${aws_launch_template.netflix.id}"
        version = "$Latest"
    }
}