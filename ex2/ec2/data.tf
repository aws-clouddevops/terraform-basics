data "aws_ami" "my_ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["aws-marketplace"]

}


