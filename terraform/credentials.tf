# Credentials
# -----------

# DB User
resource "aws_secretsmanager_secret" "db" {
  name = "db-secret"
}

# The secret
resource "aws_secretsmanager_secret_version" "v" {
  secret_id     = aws_secretsmanager_secret.db.id
  secret_string = local.db_pword
}