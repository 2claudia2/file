variable "region" {
  description = "aws region for our vpc creation"
  type = string
  default = "us-east-1"
}

variable "ami" {
    description = "ami for our ec2 istance or dev production"
    type = string
    default = "value"
  
}


variable "instance_type" {
  description = "ec2 instance type for the creation of the instance "
  type = string
  default= "t2-micro"
}

variable "public_key_path" {
  description = "value"
  default = 
}
