# -----------------
# -*- Instances -*-
# -----------------

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
    aws_security_group.sg["instance"].id,
    aws_security_group.sg["admin"].id
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

# # Test instance
# resource "aws_instance" "test" {
#   ami                         = data.aws_ami.ubuntu.id
#   instance_type               = var.instance_type
#   subnet_id                   = aws_subnet.s["public-subnet-1"].id
#   key_name                    = aws_key_pair.instance.key_name
#   user_data                   = file("./userData/appServ.sh")
#   user_data_replace_on_change = true

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

# -*- Uncomment if you want to create a custom AMI from an instance
# Just specify the instance ID you want to use! -*- 
# ------------------------------------------------>
# resource "aws_ami_from_instance" "custom_ami" {
#   name               = "Custom AMI"
#   source_instance_id = aws_instance.vm1.id
#   timeouts {
#     create = "10m"
#   }
# }

# -*- Uncomment to create VM from that AMI -*-
# ------------------------------------------->
# resource "aws_instance" "custom_vm" {
#   ami                         = aws_ami_from_instance.custom_ami.id
#   instance_type               = var.instance_type
#   subnet_id                   = aws_subnet.s["public-1"].id
#   key_name                    = aws_key_pair.vm1.key_name
#   vpc_security_group_ids      = [aws_security_group.instance_sg.id]

#   tags = {
#     Name = "customVM"
#   }
# }
# output "customVM_public_ip" {
#   value = aws_instance.custom_vm.public_ip
#   description = "Public IP of custom VM"
# }
# <----------------------------------------