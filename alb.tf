resource "aws_lb" "application" {
  name               = var.aws_lb
  internal           = false
  load_balancer_type =  var.load_balancer_type
  security_groups    = [var.vpc_security_group_id]
  subnets            = var.subnet_id[*]
  tags = {
    Name = "application-lb"
  }
}

resource "aws_lb_target_group" "application" {
  name     = var.aws_lb_target_group
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path                = "/"
    interval            = 20
    timeout             = 10
    healthy_threshold   = 2
    unhealthy_threshold = 5
    matcher             = "200-399"
  }
  tags = {    
    Name = var.aws_lb_target_group
  }
}

resource "aws_lb_listener" "application" {
  load_balancer_arn = aws_lb.application.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.application.arn
  }
}

resource "aws_lb_target_group_attachment" "web" {
  target_group_arn = aws_lb_target_group.application.arn
  target_id        = aws_instance.web.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "webserver" {
  target_group_arn = aws_lb_target_group.application.arn
  target_id        = aws_instance.webserver.id
  port             = 80
}
