# #---------------------------- RDS ----------------------------#
# resource "aws_db_instance" "mysql_instance" {
#   allocated_storage = 10
#   db_name           = var.db_name
#   engine            = var.engine
#   engine_version    = var.engine_version
#   instance_class    = var.instance_class
#   identifier        = "my-first-database"
#   username          = var.username
#   password          = var.password
#   # parameter_group_name = var.parameter_group_name

#   availability_zone           = "${var.region}a"
#   vpc_security_group_ids      = [aws_security_group.RDSSG.id]
#   db_subnet_group_name        = aws_db_subnet_group.rds-subnet-group.name
#   skip_final_snapshot         = true
#   allow_major_version_upgrade = true
# }

# resource "aws_db_subnet_group" "rds-subnet-group" {
#   name       = "main"
#   subnet_ids = [module.network.private_db_subnet_1_id, module.network.private_db_subnet_2_id]

#   tags = {
#     Name = "My DB subnet group"
#   }
# }