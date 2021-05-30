resource "aws_vpc" "default" {
    cidr_block = "10.0.0.0/16"
  tags   {
    name = "default vpc"
  }
}



resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_default_vpc.default.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "us-east-2c"
    tags = {
        Name = "prod-subnet-public-1"
    }
}
