provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo" {
    ami            = "ami-00e87074e52e6c9f9"
    instance_type  = "t3.micro"

    tags = {
        Name = "Linux-terraform"
    }
}

# We will create an IAM role and attach the same than providing the accesskey and secretkey

output "public_ip" {
    value = aws_instance.demo.public_ip
}