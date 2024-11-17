resource "random_id" "aws_node_ids" {
  count        = 5
  byte_length  = 4
}

resource "aws_instance" "aws_nodes" {
  count             = 5
  ami               = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type     = "t2.micro"
  availability_zone = element(data.aws_availability_zones.available.names, count.index % length(data.aws_availability_zones.available.names))
  tags = {
    Name = "AWS-Node-${random_id.aws_node_ids[count.index].hex}"
  }
}

data "aws_availability_zones" "available" {}

output "aws_nodes" {
  value = aws_instance.aws_nodes[*].tags
}
