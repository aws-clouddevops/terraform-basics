provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo1" {
    ami                     = data.aws_ami.my_ami.id
    instance_type           = "t3.micro"
    vpc_security_group_ids = [var.sg]

    tags = {
        Name = "EC2-terraform"
    }
}

variable "sg" {}

output "public_ip" {
    value = aws_instance.demo1.public_ip
}