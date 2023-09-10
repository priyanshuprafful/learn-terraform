resource "aws_instance" "test" {
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type_1 # here since our variable below is empty it is going to pick up the
}                                     # default value which m1.small 
variable "instance_type_1" {}