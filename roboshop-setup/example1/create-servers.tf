resource "aws_instance" "frontend"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "catalogue"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "cart"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "user"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "user"
  }
}

resource "aws_instance" "shipping"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "payment"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "mongodb"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "mysql"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "redis"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "rabbitmq"  {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  tags = {
    Name = "rabbitmq"
  }
}