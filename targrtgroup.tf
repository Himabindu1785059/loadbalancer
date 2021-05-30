resource  "aws_lb_target _group" "my-target-group"  {
    health_check  {
      interval              = 10
      path                  = "/"
      protocol              = "http"
      timeout               = 5
      healthy _threshold    = 5
      unhealthy_threshold   = 2
    } 

    name         = "my-test-tg"
    port         = 80
    protocol     = "HTTP"
    target-type  = "instance"
    vpc_id       = "${aws_default_vpc.default.id}"
}
