variable "aws_regions" {
  description = "List of AWS regions"
  type        = list(string)
  default     = ["us-east-1", "us-west-1", "us-east-2", "us-west-2", "ca-central-1"]
}
