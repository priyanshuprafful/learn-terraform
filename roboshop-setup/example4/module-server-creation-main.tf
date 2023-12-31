module "ec2-module" {
  for_each = var.instances
  source = "./ec2-module"       # ./ is the current working directory and ec2-module is our directory in which
  component = each.value["name"]  # our ec2-module.tf file is there
  instance_type = each.value["type"]
  sg_from_ec2_variable_id = module.sg-module.sg-output-id # sg-module is the file name of module
}                        # sg-output-id is the output for the id that we created in sg-module.tf file

module "sg-module" {
  source = "./security-group-example" # directory inside where our relevant tf file is present
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