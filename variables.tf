variable "vpc_cidr_block" {
  description = "CIDR Value defined"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnets"
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "instance_type" {
  description = "Type of the instance to be created"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for the Ubuntu"
  default     = "ami-06d38e519dc8ebc68"
}

variable "key_name" {
  description = "Name of the key pair to use for the instance"
  default     = "prashansa-key"
}

# variable "bucket_name" {
#     description = "Default name for the s3 bucket"
#     type = string
#     default = "hello_hello_s3_bucket"
# }

# variable "ssh_key_public" {
#     description = "Contents of public key file"
#     type = string
#     default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDsbwyYuG8LPv5UorIfpTdHWiO/qo3aOymvr9ALfYGMyXQ/52ySMgENEyVToamRxXh8xyRNuVKhe2rLZkSkS9ulg3SmtuDrFE1XYLy1ou1PQJqSBeI1RwzDa8vBapn3lwufkU5K4pByaYgoXWHoLN9F3SxJ9vMyjgKyB6w8ZOlbILgGQDOfOYnzz/8DlEYbdAB24ZSKPMTK6Zjw8HSQycy/4i12boHSSn99s5sThwP6NFZ8VpFkbAfJBqQ5VgstGkDVhaTIUQMhqUghNKuK5JIn9gKF2jmxSzqGmw8aXfTNY4csrx0lKJtAd2MobDRZL2qeP/gApyNUFRcW+mQRHFMn"
# }




############################
# variable "engine"{
#   type = string
#   description = "database"
#   default = "mysql"
# }
# variable "storage_type"{
#   type = string
#   description = "storage_type"
# }
# variable "instance_class"{
#   type = string
#   description = "storage_type"
#   default = "gp2"
# }




