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


output "ec2" {
  value = module.ec2 # here we are not giving module.ec2.something as we are testing and checking what
                      # all things it is returning . 
}