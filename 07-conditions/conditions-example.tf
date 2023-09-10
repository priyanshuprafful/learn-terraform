#resource "aws_instance" "test" {
#  ami = "ami-03265a0778a880afb"
#  instance_type = var.instance_type_1 # here since our variable below is empty it is going to pick up the
#}                                     # default value which m1.small
#variable "instance_type_1" {}
#
#variable "instances" {}
#
#resource "aws_instance" "test" {
#  ami = "ami-03265a0778a880afb"
#  instance_type = var.instances == "" ? "t3.micro" : var.instances
#}
# above if empty will create default value which is t3.micro , otherwise will create the one which
# user has given.

variable "instances" {}

resource "aws_instance" "test" {
  count = var.instances
  ami = "ami-03265a0778a880afb"
  instance_type = var.instances == "" ? "t3.micro" : var.instances

}


