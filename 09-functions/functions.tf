variable "test" {
  default = {
    "catalogue" = {
      "private_ipp" = "172.31.17.240"
    }
    "user" = {
      "private_ipp" = "172.31.26.244"
    }
  }
}

output "test-output" {
#  value = var.test # to print whole value
#  value = var.test["catalogue"] # to print catalogue only
  value = var.test["catalogue"].private_ipp
}