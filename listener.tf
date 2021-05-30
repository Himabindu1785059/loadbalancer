resource "aws_lb_listener" "elb listener" {
   
 load_balancer_arn = aws_lb.my-aws-alb.arn
       port               = 80
       protocol           = "HTTP"
       default_action {
         target_group_arn = "${aws_lb_target_group.my-target.group.arn}"
         type             = "forward"
       } 
}
resource "aws_alb_target_group_attachment' "ec2_attach" {
  count =length (aws_instance_base)
  target_group_arn = aws_lb_target_group.my-target-group.arn
  target_id =aws_instance.base[count.index].id
}
