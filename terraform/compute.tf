# ----------------
# -*- Instance -*-
# ----------------

# SSH key pair that can be used for instances
# Remember to ssh-keygen the key and then reference it in locals.tf!
resource "aws_key_pair" "instance" {
  key_name   = var.instance_key_name
  public_key = local.instance_pub_key
}

# -*- Bastion host -*-
# --------------------
resource "aws_instance" "bastion_host" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.s["public-subnet-1"].id
  key_name      = aws_key_pair.bastion_host.key_name

  vpc_security_group_ids = [
    aws_security_group.sg["bastion"].id,
    aws_security_group.sg["instance"].id # <- For updates and installs. Can be commented out when not needed!
  ]

  tags = {
    Name = "bastion-host"
  }
}
resource "aws_key_pair" "bastion_host" {
  # Configure file path to your pub key in locals.tf
  key_name   = var.bastion_key_name
  public_key = local.bastion_pub_key
}

# -*- Test instance -*-
# ---------------------
# resource "aws_instance" "test" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type
#   subnet_id     = aws_subnet.s["public-subnet-2"].id
#   key_name      = aws_key_pair.instance.key_name

#   vpc_security_group_ids = [
#     aws_security_group.sg["instance"].id,
#     aws_security_group.sg["admin"].id,
#   ]

#   tags = {
#     Name = "test-instance"
#   }
# }
# output "test_instance_pub_ip" {
#   description = "Public IP of test instance"
#   value       = aws_instance.test.public_ip
# }

# -*- Custom AMI -*- 
# ------------------
# resource "aws_ami_from_instance" "custom_ami" {
#   name               = "Custom AMI"
#   source_instance_id = aws_instance.test.id # <- specify target
#   timeouts {
#     create = "10m"
#   }
# }

# -*- Uncomment to create VM from that AMI -*-
# -------------------------------------------->
# resource "aws_instance" "custom_vm" {
#   ami                    = aws_ami_from_instance.custom_ami.id
#   instance_type          = var.instance_type
#   subnet_id              = aws_subnet.s["public-subnet-2"].id
#   key_name               = aws_key_pair.instance.key_name
#   vpc_security_group_ids = [
#     aws_security_group.sg["instance"].id,
#     aws_security_group.sg["bastion"].id
#     ]

#   tags = {
#     Name = "custom-ami-vm"
#   }
# }
# output "customVM_public_ip" {
#   value       = aws_instance.custom_vm.public_ip
#   description = "Public IP of custom VM"
# } # <--