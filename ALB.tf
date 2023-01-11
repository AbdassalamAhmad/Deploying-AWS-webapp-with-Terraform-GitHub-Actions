#-------------Application Load Balancer-------------------#
resource "aws_lb" "alb" {
  name               = "my-application-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ALBSG.id]
  subnets            = [module.network.public_subnet_1_id, module.network.public_subnet_2_id]
}

#-------------Target Group-------------------#
resource "aws_lb_target_group" "tagret_group" {
  health_check {
    interval            = 25
    path                = "/"
    protocol            = "HTTP"
    timeout             = 8
    healthy_threshold   = 5
    unhealthy_threshold = 3

  }

  name     = "my-alb-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.network.my_vpc_id
}

#-------------Target Group Attach-------------------#
resource "aws_lb_target_group_attachment" "test1" {
  depends_on = [
    aws_instance.application_instance_1
  ]
  target_group_arn = aws_lb_target_group.tagret_group.arn
  target_id        = aws_instance.application_instance_1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "test2" {
  depends_on = [
    aws_instance.application_instance_2
  ]
  target_group_arn = aws_lb_target_group.tagret_group.arn
  target_id        = aws_instance.application_instance_2.id
  port             = 80
}



#-------------Target Group Listner-------------------#
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tagret_group.arn
  }
}



