variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "db_password" {
  description = "The password for the RDS database"
  default = "your_password_here"
}

variable "key_name" {
  description = "EC2 Key pair name"
  default = "my-key-pair"
}
