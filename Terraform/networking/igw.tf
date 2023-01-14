#-------------Internet Gatway----------------------#

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my_vpc.id
}