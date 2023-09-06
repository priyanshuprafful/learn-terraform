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