output "aws_nodes_output" {
  value = aws_instance.aws_nodes[*].tags
}
