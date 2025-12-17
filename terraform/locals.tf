# --------------------
# -*- Local values -*-
# --------------------

# Subnets
# ------
locals {
  subnet_names = [
    "public-subnet-1",
    "public-subnet-2",
    "private-web-subnet-1",
    "private-web-subnet-2",
    "private-app-subnet-1",
    "private-app-subnet-2",
    "private-data-subnet-1",
    "private-data-subnet-2"
  ]

  subnets = {
    for idx, name in local.subnet_names :
    name => cidrsubnet(var.main_cidr, 8, idx + 1)
  }
}

# Port values
# -----------
locals {
  port = {
    ssh             = 22
    http            = 80
    https           = 443
    jenkins         = 8080
    gitea           = 3000
    postgres        = 5432
    redis           = 6379
    ephemeral_start = 1024
    ephemeral_end   = 65535
  }
}

# NACL
# ----
locals {
  pub_nacl_ingress = {
    allow_ssh   = local.port.ssh
    allow_http  = local.port.http
    allow_https = local.port.https
  }
}

# Security groups
# --------------
locals {
  ip_all = "0.0.0.0/0"

  sg_definitions = {
    lb = {
      ports = [
        { from = local.port.http, to = local.port.http },
        { from = local.port.https, to = local.port.https }
      ]
      sources = [
        local.ip_all
      ]
    }

    webserver = {
      ports = [
        { from = local.port.http, to = local.port.http },
        { from = local.port.https, to = local.port.https }
      ]
      sources = [
        local.subnets.public-subnet-1,
        local.subnets.public-subnet-2
      ]
    }

    appserver = {
      ports = [
        { from = local.port.http, to = local.port.http },
        { from = local.port.gitea, to = local.port.gitea }
      ]
      sources = [
        local.subnets.private-web-subnet-1,
        local.subnets.private-web-subnet-2
      ]
    }

    dbserver = {
      ports = [
        { from = local.port.postgres, to = local.port.postgres }
      ]
      sources = [
        local.subnets.private-app-subnet-1,
        local.subnets.private-app-subnet-2
      ]
    }

    cacheserver = {
      ports = [
        { from = local.port.redis, to = local.port.redis }
      ]
      sources = [
        local.subnets.private-app-subnet-1,
        local.subnets.private-app-subnet-2
      ]
    }

    ciserver = {
      ports = [
        { from = local.port.jenkins, to = local.port.jenkins }
      ]
      sources = [
        local.subnets.private-app-subnet-1,
        local.subnets.private-app-subnet-2
      ]
    }

    cirunner = {
      ports = [
        { from = local.port.ssh, to = local.port.ssh }
      ]
      sources = [
        local.subnets.private-app-subnet-1,
        local.subnets.private-app-subnet-2
      ]
    }

    bastion = {
      ports = [
        { from = local.port.ssh, to = local.port.ssh }
      ]
      sources = [
        local.ip_all # <- specify your own IP or network for prod grade!
      ]
    }

    admin = {
      ports = [
        { from = local.port.ssh, to = local.port.ssh }
      ]
      sources = [
        local.subnets.public-subnet-1,
        local.subnets.public-subnet-2
      ]
    }
  }

  # Preparing for rule creation
  sg_rules = flatten([
    for sg_name, sg in local.sg_definitions : [
      for p in sg.ports : [
        for src in sg.sources : {
          sg        = sg_name
          from_port = p.from
          to_port   = p.to
          ip        = src
        }
      ]
    ]
  ])
}

# Public key
# ----------
locals {
  bastion_pub_key = file("~/.ssh/bastion_key.pub")

  instance_pub_key = file("~/.ssh/vm1.pub")
}

# Buckets
# -------
locals {
  buckets = {
    artefact = "artefact-bucket-${random_id.bucket.hex}"
    repo     = "repo-bucket-${random_id.bucket.hex}"
  }
}

# DB user password
locals {
  db_pword = random_password.db.result
}
