resource "aws_instance" "demo1" {
    ami                     = data.aws_ami.my_ami.id
    instance_type           = "t3.micro"
    vpc_security_group_ids  = [var.sg]

    tags = {
        Name = "EC2-terraform"
    }
  provisioner "remote-exec" {
  
  # Connection Provisioner
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.private_ip
  }

    inline = [
      "ansible-pull -U https://github.com/aws-clouddevops/ansible.git -e COMPONENT=${var.COMPONENT} -e ENV=dev -e APP_VERSION=0.0.1 roboshop-pull.yml",
    ]
  }
}

variable "sg" {}

output "public_ip" {
    value = aws_instance.demo1.public_ip
}