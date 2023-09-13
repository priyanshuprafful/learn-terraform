module "sg" {
  source = "./sg"
}

module "ec2" {
  for_each                = var.instances
  source                  = "./ec2"
  component               = each.value["name"]
  instance_type           = each.value["type"]
  sg_from_ec2_variable_id = module.sg.sg-output-id
}

module "route53" {
  for_each = var.instances
  source = "./route53"
  component = each.value["name"]
  private_ip = module.ec2[each.value["name"]].private_ip
  # value = var.test["catalogue"].private_ipp the example we saw in functions
#  [each.value["name"]] this is for component
}


output "ec2" {
  value = module.ec2 # here we are not giving module.ec2.something as we are testing and checking what
                      # all things it is returning .
}