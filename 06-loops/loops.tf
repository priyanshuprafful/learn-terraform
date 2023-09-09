variable "D2" {
  default = 5
}

resource "null_resource" "i_do_nothing" {
  count = var.D2 # it will do nothing for 5 times
}
variable "D3" {
  default = ["apple" , "banana"]
}
resource "null_resource" "i_do_nothing_also" {
  count = length(var.D3) # it will do nothing for 5 times but will take input from D3 list
}                        # we use length as we have a list above

variable "D4" {
  default = {
    pineapple = {
      name = "Pineapple"
      count = 3
    }
    mango = {
      name = "Mango"
      count = 30
    }
  }
}

resource "null_resource" "i_do_nothing_again" {
  for_each = var.D4
}