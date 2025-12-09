# Credentials
# -----------

# Admin user
resource "aws_secretsmanager_secret" "admin" {
  name = "admin-secret"
}

# The secret
# (Variable in >> secrets.tf (only locally tho, .gitignore is taking care of that ;))
resource "aws_secretsmanager_secret_version" "v" {
  secret_id     = aws_secretsmanager_secret.admin.id
  secret_string = jsonencode(var.secret)
}