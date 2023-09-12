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


