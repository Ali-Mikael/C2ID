# ----------------
# -*- Frontend -*-
# ----------------

# -*- Load Balancer -*-
# ---------------------
resource "aws_elb" "frontend" {
  name               = "frontend-load-balancer"
  subnets            = [aws_subnet.s["public-subnet-1"].id, aws_subnet.s["public-subnet-2"].id]

  listener {
    instance_port     = local.port.http
    instance_protocol = "http"
    lb_port           = local.port.http
    lb_protocol       = "http"
  }
  idle_timeout    = 120
  instances       = [aws_instance.web_server[0].id, aws_instance.web_server[1].id]
  security_groups = [aws_security_group.sg["lb"].id]

  tags = {
    Name = "frontend-load-balancer"
  }
}

# Enable proxy protocol
resource "aws_proxy_protocol_policy" "proxy" {
  load_balancer  = aws_elb.frontend.name
  instance_ports = ["${local.port.http}"]
}

# -*- Web Server -*-
# ------------------
resource "aws_instance" "web_server" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-web-subnet-${count.index + 1}"].id
  key_name      = aws_key_pair.instance.key_name
  user_data = templatefile("userData/nginx_init.sh.tftpl", {
    app_server_private_ip = count.index == 0 ? cidrhost(local.subnets.private-app-subnet-1, 100) : cidrhost(local.subnets.private-app-subnet-2, 100)
  })

  vpc_security_group_ids = [
    aws_security_group.sg["webserver"].id,
    aws_security_group.sg["admin"].id
  ]

  tags = {
    Name = "web-server-${count.index + 1}"
  }
}
