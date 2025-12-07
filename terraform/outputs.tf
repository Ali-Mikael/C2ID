output "public_ip" {
  value = aws_instance.bastion_host.public_ip
  description = "Public IP of bastion host"
}

output "private_ip" {
  value = aws_instance.bastion_host.private_ip
  description = "Private IP of bastion host"
}

output "private_bucket_name" {
  value = aws_s3_bucket.b["private"].bucket
  description = "The name of your S3 bucket"
}