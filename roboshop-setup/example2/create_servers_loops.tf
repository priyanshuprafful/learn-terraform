resource "aws_instance" "frontend" { # here frontend is used for reference and is not the name
  count = 5
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
}