resource "aws_launch_template" "netflix" {
    name_prefix = "Netflix"
    image_id = "ami-0447a12f28fddb066"
    instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "netflix_mumbai" {
    availability_zones = ["ap-south-1a"]
    desired_capacity = 0
    max_size = 3
    min_size = 0

    launch_template {
        id = "${aws_launch_template.netflix.id}"
        version = "$Latest"
    }
}