resource "aws_lb" "my_aws_alb" {
  name     =  "bindu-test-alb"
  internal = false
  security_groups = [
    "${aws_security_group.allow_port.id}",
  ]
  
  subnets =data.aws_subnet_ids.subnet.ids
  tags = {
    name = "bindu-test-alb"
  }
  
  ip_address-type    ="ipv4"
  load_balancer-type ="application"
}
