variable "test" {
  default = {
    "catalogue" = {
      "private_ip" = "172.31.17.240"
    }
    "user" = {
      "private_ip" = "172.31.26.244"
    }
  }
}

output "test-output" {
  value = var.test
}