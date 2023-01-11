output "my_vpc_id" {
  value = aws_vpc.my_vpc.id
}
output "public_subnet_1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.public_subnet_2.id
}

output "private_app_subnet_1_id" {
  value = aws_subnet.private_app_subnet_1.id
}

output "private_app_subnet_2_id" {
  value = aws_subnet.private_app_subnet_2.id
}

output "private_db_subnet_1_id" {
  value = aws_subnet.private_db_subnet_1.id
}

output "private_db_subnet_2_id" {
  value = aws_subnet.private_db_subnet_2.id
}

output "eip_public_ip" {
  value = aws_eip.eip.public_ip
}