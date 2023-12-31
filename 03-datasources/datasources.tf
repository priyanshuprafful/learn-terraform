data "aws_ami" "ami_my_name" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}
output "ami_id" {
  value = data.aws_ami.ami_my_name.image_id
}