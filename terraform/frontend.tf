# ----------------
# -*- Frontend -*-
# ----------------

# -*- ALB -*-
# -----------
resource "aws_lb" "frontend" {
  name               = "frontend-alb"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg["alb"].id]
  subnets = [
    aws_subnet.s["private-web-subnet-1"].id,
    aws_subnet.s["private-web-subnet-2"].id
  ]

  tags = {
    Name     = "frontend-alb"
    Endpoint = "public-facing"
  }
}

# ALB target group
resource "aws_lb_target_group" "frontend" {
  name     = "web-target-group"
  port     = local.port.http
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  #   health_check {
  #     path                = "/"
  #     protocol            = "HTTP"
  #     matcher             = "200"
  #     interval            = 15
  #     timeout             = 3
  #     healthy_threshold   = 2
  #     unhealthy_threshold = 2
  #   }
}

# ALB target group attachment
resource "aws_lb_target_group_attachment" "frontend" {
  target_group_arn = aws_lb_target_group.frontend.arn
  target_id        = aws_instance.web_server.id
  port             = 80
}

# ALB listener
resource "aws_lb_listener" "frontend" {
  load_balancer_arn = aws_lb.frontend.arn
  port              = local.port.http
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend.arn
  }
}

# -*- Web server -*-
# ------------------
resource "aws_instance" "web_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-web-subnet-1"].id
  key_name      = aws_key_pair.instance.key_name
  user_data     = file("./userData/webServ.sh")

  vpc_security_group_ids = [
    aws_security_group.sg["webserver"].id,
    aws_security_group.sg["admin"].id
  ]

  tags = {
    Name = "web-server"
  }
}
