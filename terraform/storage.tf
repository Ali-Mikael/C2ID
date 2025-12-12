# Storage
# -------

# A random string that can be used for bucket names 
#       (as they have to be globally unique)
resource "random_id" "bucket" {
  byte_length = 8
}

# Bucket creation
resource "aws_s3_bucket" "b" {
  for_each = local.buckets

  bucket = each.value

  tags = {
    Name = "${each.key}-bucket"
  }
}

# Versioning buckets
resource "aws_s3_bucket_versioning" "v" {
  for_each = aws_s3_bucket.b
  bucket   = each.value.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Lifecycle config for buckets
resource "aws_s3_bucket_lifecycle_configuration" "lc" {
  for_each = { for k, v in aws_s3_bucket.b : k => v if k == "private" }
  bucket   = each.value.id

  rule {
    id     = "cleanup-noncurrent"
    status = "Enabled"

    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }
}
