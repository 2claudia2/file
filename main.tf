terraform {
  required_version = "~>1.3"
  required_providers {
    aws{
        source = "hashicorp/aws"
        version = ~> 3.0
    }
  }

  resource "aws_vpc" "myvpc" {
  cidr_block= "10.0.0.2/24"

   tags = {
     "Name" = "claudiavpc"
   }   
  }
  resource "aws_subnet" "public_subnet" {
    vpc_id= aws_vpc.myvpc.id
    cidr_block= "10.0.0.2/24"
    map_public_ip_on_launch = "true"

    tags = {
        "Name"= "web_pubsubnet"
         Environment= "Dev"
    }     
  }
  resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block="10.0.0.2/24"


    tags={
        "Name"= "web-privasub"
        Environment= "prod"
    }    
  }

  resource "aws_instance" "devec2" {
    ami= 
    instance_type= "var.instance_type"
    subnet_id= "aws_subnet.pubsub"

     tags= {
        "Name"= "web-pubec2"
        Environment= "dev"
     }
    
  }

  resource "aws_instance" "prodec2" {
    ami=
    instance_type= "var.instance_type"
    subnet_id="aws_subnet."

     tags=
         "Name"=""
         Environment= "prod"
    
  }