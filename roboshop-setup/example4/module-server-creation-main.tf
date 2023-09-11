module "ec2-module" {
  for_each = var.instances
  source = "./ec2-module"       # ./ is the current working directory and ec2-module is our directory in which
  component = each.value["name"]  # our ec2-module.tf file is there
  instance_type = each.value["type"]
}

module "sg-module" {
  source = "./security-group-example"
}


variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}