#---------------- Network Variables ---------------------
variable "region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_1_cidr" {
  type = string
}


variable "public_subnet_2_cidr" {
  type = string
}


variable "private_app_subnet_1_cidr" {
  type = string
}

variable "private_app_subnet_2_cidr" {
  type = string
}

variable "private_db_subnet_1_cidr" {
  type = string
}

variable "private_db_subnet_2_cidr" {
  type = string
}


#---------------- EC2 Variables ---------------------

variable "ami" {
  type = string
}

variable "ec2_instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "public_key" {
  type      = string
  sensitive = true
}


#---------------- Database Variables ---------------------

# variable "db_name" {
#   type = string
# }
# variable "engine" {
#   type = string
# }
# variable "engine_version" {
#   type = string
# }
# variable "instance_class" {
#   type = string
# }
# variable "username" {
#   type = string
#   sensitive = true
# }
# variable "password" {
#   type = string
#   sensitive = true
# }
