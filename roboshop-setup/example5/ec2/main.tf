data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

resource "aws_instance" "ec2"  {
  ami = data.aws_ami.ami.image_id
  instance_type = "${var.instance_type}" # we can give var.instance_type here also it is the same
  vpc_security_group_ids = [var.sg_from_ec2_variable_id] # used from  module-server-creation-alb.tf file
  tags = {                                # there we have declared everything of sg-module.tf file
    Name = var.component # here we are not using $ as we are not adding anything along with the component
  }
}


variable "component" {}
variable "instance_type" {}
variable "sg_from_ec2_variable_id" {}

output "private_ip" {
  value = aws_instance.ec2.private_ip
}