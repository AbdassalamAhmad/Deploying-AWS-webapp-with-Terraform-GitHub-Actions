#-------------VPC----------------------#


resource "aws_vpc" "my_vpc" { # "my_vpc" is a variable name used for referencing for this vpc in the code.
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = "true"

  tags = {
    Name = "CI/CD VPC"
  }
}
