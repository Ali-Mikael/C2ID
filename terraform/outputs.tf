# output "bastion_public_ip" {
#   value = aws_instance.bastion_host.public_ip
#   description = "Public IP of bastion host"
# }

output "test_instance_pub_ip"{
  description = "Public IP of test instance"
  value = aws_instance.test.public_ip
}

output "rds_hostname" {
  description = "RDS instance hostname"
  value       = aws_db_instance.rds.address
  sensitive   = true
}

output "rds_port" {
  description = "RDS instance port"
  value       = aws_db_instance.rds.port
  sensitive   = true
}

output "rds_username" {
  description = "RDS instance root username"
  value       = aws_db_instance.rds.username
  sensitive   = true
}