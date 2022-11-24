provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo" {
    ami                     = "ami-00e87074e52e6c9f9"
    instance_type           = "t3.micro"
    vpc_security_groups_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name = "Linux-terraform"
    }
}

# We will create an IAM role and attach the same than providing the accesskey and secretkey

output "public_ip" {
    value = aws_instance.demo.public_ip
}

# Creates Security group

resource "aws_security_group" "allow_ssh" {
    name            = "allow_ssh"
    description     = "Allow SSH inbound traffic"

    ingress {
        description           = "SSH from INTERNET"
        from_port             = 22
        to_port               = 22
        protocol              = "tcp"
        cidr_blocks           = ["0.0.0.0/0"]
    }

    egress {
        from_port            = 0
        to_port              = 0
        protocol             = "-1"
        cidr_blocks          = ["0.0.0.0/0"]

    }

    tags  = {
        Name = "allow_ssg_sg"
    }
}