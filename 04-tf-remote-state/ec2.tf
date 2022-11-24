provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo1" {
    ami                     = "ami-00e87074e52e6c9f9"
    instance_type           = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allows_ssh.id]

    tags = {
        Name = "EC2-terraform"
    }
}

# We will create an IAM role and attach the same than providing the accesskey and secretkey

output "public_ip" {
    value = aws_instance.demo1.public_ip
}

# Creates Security group

resource "aws_security_group" "allows_ssh" {
    name            = "allows_ssh"
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