variable "sample" {
  default = "Hello World"
}
output "sample1" {
  value = var.sample
}

variable "sample1" {} # here we are not giving any value , or not declaring sample 1 ,
                      # actually it will fetch the sample 1 from terraform.tfvars file that we created

output "sample1" {
  value = var.sample1
}