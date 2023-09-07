variable "sample" {
  default = "Hello World"
}
output "sample1" {
  value = var.sample
}

variable "sample2" {} # here we are not giving any value , or not declaring sample 2 ,
                      # actually it will fetch the sample 2 from terraform.tfvars file that we created

output "sample3" {
  value = var.sample2
}

variable "cli" {} # again empty variable as we are going to send it from cli

output "cli1" {
  value = var.cli
}

variable "input" {} # we are not even printing this

variable "type1" {
  default = "Namaste" # this is normal one
}
variable "type2" {
  default = ["Namaste",1000,true,"World"] # this is list
}
variable "type3" { # this is map type
  default = {
    string = "Hello", # here string , number and boolean are just name or key given
    number = 100 ,
    boolean = true
  }
}

output "mix_type" {
  value = "Variable Type1 is ${var.type1} , First value in list is ${var.type2[0]} , Boolean Value of Map is ${var.type3["boolean"] , Number value of Map is ${var.type3[number]} }"
}