resource "aws_spot_instance_request" "prom-test-node" {
  ami = "ami-0ce9a5bb4362d4c85"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  wait_for_fulfillment = true # needed as we want our spot request to go through
# spot request and instance creation both are different things , spot request can go and come out but we want our
  # server to be created , hence we will wait for fulfillment
  tags = {
    Name = "prom-test-node"
  }
}

resource "aws_ec2_tag" "prom-test-node" {
  key         = "Name"
  resource_id = aws_spot_instance_request.prom-test-node.spot_instance_id
  value       = "prom-test-node"
}

resource "aws_spot_instance_request" "prometheus-test-server" {
  ami = "ami-0ce9a5bb4362d4c85"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-017c17be83f3872d4"]
  wait_for_fulfillment = true

  tags = {
    Name = "prometheus-test-server"

  }
}

resource "aws_ec2_tag" "prometheus-test-server" {
  key         = "Name"
  resource_id = aws_spot_instance_request.prometheus-test-server.spot_instance_id
  value       = "prometheus-test-server"
}
  