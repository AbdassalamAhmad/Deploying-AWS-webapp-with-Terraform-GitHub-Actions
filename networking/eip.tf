#-------------Elastic IP----------------------#

resource "aws_eip" "eip" {
  vpc = true
}