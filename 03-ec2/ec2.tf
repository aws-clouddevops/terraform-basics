resource "aws_instance" "demo" {
    ami            = "ami-00e87074e52e6c9f9"
    instance_type  = "t3.micro"

    tags = {
        Name = "Linux-terraform"
    }
}