provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo1" {
    ami                     = "ami-00e87074e52e6c9f9"
    instance_type           = "t3.micro"
    vpc_security_group_ids = [var.sg]

    tags = {
        Name = "EC2-terraform"
    }
}

variable "sg" {}