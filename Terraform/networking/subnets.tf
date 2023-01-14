#-------------Public Subnets-------------------#

resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = "${var.region}b"
}

#-------------Private App Subnets-------------------#

resource "aws_subnet" "private_app_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_app_subnet_1_cidr
  availability_zone = "${var.region}a"

}

resource "aws_subnet" "private_app_subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_app_subnet_2_cidr
  availability_zone = "${var.region}b"

}


#-------------Private DB Subnets-------------------#

resource "aws_subnet" "private_db_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_db_subnet_1_cidr
  availability_zone = "${var.region}a"

}

resource "aws_subnet" "private_db_subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_db_subnet_2_cidr
  availability_zone = "${var.region}b"

}

