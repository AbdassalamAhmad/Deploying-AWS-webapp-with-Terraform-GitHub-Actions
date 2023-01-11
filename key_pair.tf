#----------------Create ssh key using ssh-keygen command---------------------------


resource "aws_key_pair" "ssh_key_variable" {
  key_name   = var.key_name
  public_key = var.public_key
}

# ssh-keygen # name = ssh_key_aws
# chmod 400 ssh_key_aws
# cat ssh_key_aws >> GitHub Secrets EC2_PRIVATE_SSH_KEY
# cat ssh_key_aws.pub >> GitHub Secrets EC2_PUBLIC_SSH_KEY
