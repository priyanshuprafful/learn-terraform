resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 0 # 0 is for everyone and 22 is for ssh and 80 is for http like that
    to_port          = 0
    protocol         = "-1" # instead of tcp we give -1 which means allow all
    cidr_blocks      = ["0.0.0.0/0"]
    # so this becomes allow-all kind of a security group .
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
