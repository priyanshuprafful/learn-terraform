resource "aws_instance" "instances" { # here instances is used for reference for terraform and is not the name
  for_each = var.instances # will take the count and is used for referencing
  ami                    = "ami-03265a0778a880afb"
  instance_type          = each.value["type"] # here we want to pick type from below variable instances type
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name =each.value["name"]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name ="catalogue"
      type = "t3.micro"
    }
    user = {
      name ="user"
      type = "t3.small"
    }
  }
}

output "ec2_info" {
  value = [for k,v in aws_instance.instances:v.public_ip]
}

