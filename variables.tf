#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "instance_name" {
description = "Name prefix for resources on AWS"
type = string
default = "test-instance"
}

#------------------------------------------------------------------------------
# AWS CREDENTIALS AND REGION
#------------------------------------------------------------------------------
variable "instance_type" {
description = "AWS EC2 instance type"
default = "t2.micro"
}
variable "region" {
description = "AWS Region the infrastructure is hosted in"
default = "us-east-1"
}

# Map of Linux2 AMI ID / region
variable "ami" {
  type        = map
  description = "The id of the machine image (AMI) to use for the server."

  default = {
    us-west-1      = "ami-04b6c97b14c54de18"
    ap-south-1     = "ami-04db49c0fb2215364"
    eu-central-1   = "ami-0453cb7b5f2b7fca2"
   }
}
# Map of Linux2 AMI ID / region
variable "winami" {
  type        = map
  description = "The id of the machine image (AMI) to use for the server."

  default = {
    us-west-1      = "ami-04b6c97b14c54de18"
    ap-south-1     = "ami-04db49c0fb2215364"
    eu-central-1   = "ami-0453cb7b5f2b7fca2"
   }
}
## 
variable "cloudprovider" {
description = "Select the Cloud Provider"
default = "AWS"
}
variable "size" {
description = "Provide size"
default = "100"
}
variable "Owner" {
description = "Owner name"
default = "Ragesh"
}
variable "private_key" {
  default = "POC-STD-KEY-PAIR.pem"
}
variable "ansible_user" {
  default = "ec2-user"
}
variable "Group" {
description = "Group Tag"
type = string
default = "No-Group"
}
variable "Project" {
description = "Project  name Tag"
type = string
default = "No-Project"
}
variable "User" {
description = "User ID"
type = string
default = "No User"
}