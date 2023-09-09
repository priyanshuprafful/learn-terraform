variable "D2" {
  default = 5
}

resource "null_resource" "i_do_nothing" {
  count = var.D2 # it will do nothing for 5 times 
}