# ---------------------
# -*- Backend magic -*-
# ---------------------


# -*- RDS instance for gitea -*-
# ------------------------------
resource "aws_db_instance" "rds" {
  db_name               = "giteadb"
  identifier            = "gitea-remote-db"
  allocated_storage     = 40
  max_allocated_storage = 80

  engine         = data.aws_rds_engine_version.postgres.engine
  engine_version = data.aws_rds_engine_version.postgres.version
  instance_class = var.rds_instance_class

  username                    = "gitea"
  manage_master_user_password = true

  apply_immediately      = true
  skip_final_snapshot    = true
  multi_az               = true
  db_subnet_group_name   = aws_db_subnet_group.db_subnets.name
  vpc_security_group_ids = [aws_security_group.sg["dbserver"].id]

  tags = {
    Name = "gitea-remote-db"
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

# -*- App servers -*-
# -------------------
#      (Gitea)
resource "aws_instance" "app_server" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-app-subnet-${count.index + 1}"].id
  key_name      = aws_key_pair.instance.key_name
  user_data     = file("./userData/appServ.sh")

  # Forcing private IP (easier to config reverse proxy) ->
  private_ip = count.index == 0 ? cidrhost(local.subnets.private-app-subnet-1, 100) : cidrhost(local.subnets.private-app-subnet-2, 100)

  vpc_security_group_ids = [
    aws_security_group.sg["appserver"].id,
    aws_security_group.sg["admin"].id
  ]

  tags = {
    Name = "app-server-${count.index + 1}"
  }
}

# -*- CI servers -*-
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

# -*- Jenkins runners -*-
# -----------------------
resource "aws_instance" "jenkins_runner" {
  count         = 2
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["private-data-subnet-${count.index + 1}"].id
  key_name      = aws_key_pair.instance.key_name
  user_data     = file("./userData/runner.sh")

  vpc_security_group_ids = [aws_security_group.sg["runner"].id]

  tags = {
    Name = "jenkins-runner-${count.index + 1}"
  }
}
