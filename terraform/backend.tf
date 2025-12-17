# ---------------------
# -*- Backend Magic -*-
# ---------------------


# -*- App Servers -*-
# -------------------
#      (Gitea)
resource "aws_instance" "app_server" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-app-subnet-${count.index + 1}"].id
  key_name      = aws_key_pair.instance.key_name
  user_data     = file("./userData/gitea_init.sh")
    # templatefile("userData/app_init.sh.tftpl", {  <<-- not losing hope on this, so leaving it here until I get it fixed
    #   alb_dns        = "${aws_elb.frontend.dns_name}",
    #   db_endpoint    = "${aws_db_instance.rds.endpoint}",
    #   db_password    = "${random_password.db.result}",
    #   db_user        = "${var.db_user}",
    #   redis_endpoint = "${aws_elasticache_cluster.app.cache_nodes.0.address}:${aws_elasticache_cluster.app.cache_nodes.0.port}"
    # })

  # Forcing private IP makes configuring Nginx easier by way of init script
  private_ip = count.index == 0 ? cidrhost(local.subnets.private-app-subnet-1, 100) : cidrhost(local.subnets.private-app-subnet-2, 100)

  vpc_security_group_ids = [
    aws_security_group.sg["appserver"].id,
    aws_security_group.sg["admin"].id
  ]

  tags = {
    Name = "app-server-${count.index + 1}"
  }
}

# -*- CI Servers -*-
# ------------------
#     (Jenkins)
resource "aws_instance" "ci_server" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-app-subnet-${count.index + 1}"].id
  key_name      = aws_key_pair.instance.key_name
  user_data     = file("./userData/ciServ.sh")

  vpc_security_group_ids = [
    aws_security_group.sg["ciserver"].id,
    aws_security_group.sg["admin"].id
  ]

  tags = {
    Name = "ci-server-${count.index + 1}"
  }
}

# -*- Jenkins Runners -*-
# -----------------------
resource "aws_instance" "jenkins_runner" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-app-subnet-${count.index + 1}"].id
  key_name      = aws_key_pair.instance.key_name
  user_data     = file("./userData/runner.sh")

  vpc_security_group_ids = [aws_security_group.sg["cirunner"].id]

  tags = {
    Name = "jenkins-runner-${count.index + 1}"
  }
}

# -*- RDS instance for Gitea -*-
# ------------------------------
resource "aws_db_instance" "rds" {
  db_name               = "giteadb"
  identifier            = "gitea-remote-db"
  allocated_storage     = 40
  max_allocated_storage = 80

  engine               = data.aws_rds_engine_version.postgres.engine
  engine_version       = data.aws_rds_engine_version.postgres.version
  instance_class       = var.rds_instance_class
  parameter_group_name = aws_db_parameter_group.app.name
  apply_immediately    = true
  skip_final_snapshot  = true

  username = var.db_user
  password = random_password.db.result

  multi_az               = true
  db_subnet_group_name   = aws_db_subnet_group.db_subnets.name
  vpc_security_group_ids = [aws_security_group.sg["dbserver"].id]

  tags = {
    Name = "gitea-remote-db"
  }
}

#DB psswd
resource "random_password" "db" {
  length = 20
  override_special = "!-_(){}?"
  min_lower = 5
  min_upper = 5
}

# Manage RDS configs using parameter group
resource "aws_db_parameter_group" "app" {
  name   = "gitea-remote-db-pg"
  family = "postgres18"

  parameter {
    name  = "rds.force_ssl"
    value = 0
  }
}

# Subnet group for RDS instance
resource "aws_db_subnet_group" "db_subnets" {
  name = "subnet-group"
  subnet_ids = [
    aws_subnet.s["private-data-subnet-1"].id,
    aws_subnet.s["private-data-subnet-2"].id
  ]

  tags = {
    Name = "db-subnet-group"
  }
}

# -*- Redis ElastiCache -*-
# -------------------------
resource "aws_elasticache_cluster" "app" {
  cluster_id           = "gitea-cache"
  engine               = "redis"
  parameter_group_name = "default.redis7"
  node_type            = var.redis_node_type
  engine_version       = var.redis_engine_version
  num_cache_nodes      = 1
  apply_immediately    = true

  port               = local.port.redis
  security_group_ids = [aws_security_group.sg["cacheserver"].id]
  subnet_group_name  = aws_elasticache_subnet_group.sg.id

  depends_on = [aws_security_group.sg["cacheserver"]] # For some reason only this attaches the SG properly (even though we're referencing it..)
}

# Subnet group for elasticache
resource "aws_elasticache_subnet_group" "sg" {
  name = "elasticache-subnet-group"
  subnet_ids = [
    aws_subnet.s["private-data-subnet-1"].id,
    aws_subnet.s["private-data-subnet-2"].id
  ]
}
