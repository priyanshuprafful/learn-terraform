resource "aws_spot_instance_request" "prometheus_node_1" {
  ami = "ami-0ce9a5bb4362d4c85"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  wait_for_fulfillment = true

  tags = {
    Name = "prom-test-server1"
  }
}

resource "aws_ec2_tag" "prometheus_node_1" {
  key         = "Name"
  resource_id = aws_spot_instance_request.prometheus_node_1.spot_instance_id
  value       = "prom-test-server1"
}

resource "aws_spot_instance_request" "prometheus_node_2" {
  ami = "ami-0ce9a5bb4362d4c85"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  wait_for_fulfillment = true

  tags = {
    Name = "prom-test-server2"

  }
}

resource "aws_ec2_tag" "prometheus_node_2" {
  key         = "Name"
  resource_id = aws_spot_instance_request.prometheus_node_2.spot_instance_id
  value       = "prom-test-server2"
}