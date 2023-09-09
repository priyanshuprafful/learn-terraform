resource "aws_instance" "frontend" { # here frontend is used for reference and is not the name
  count = length(var.instances)
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name =var.instances[count.index]
  }
}

variable "instances" {
   default = ["cart", "catalogue", "shipping", "user", "payment" ]
}

output "public_ip" {
  value = aws_instance.frontend.*.public_ip
}