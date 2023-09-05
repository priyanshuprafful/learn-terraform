resource "aws_instance" "ec2"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "test"
  }
}