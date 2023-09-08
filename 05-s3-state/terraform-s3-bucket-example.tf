terraform {
  backend "s3" {
    bucket = "terraform-saraldevops"
    key = "05-s3-state/terraform-s3-bucket-example.tfstate"
    region = "us-east-1"
  }
}
resource "aws_instance" "my_ec2"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "test_demo"
  }
}