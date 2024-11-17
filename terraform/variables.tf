variable "aws_regions" {
  default = ["us-east-1", "us-west-1", "us-east-2", "us-west-2", "ca-central-1"]
}

variable "gcp_regions" {
  default = ["us-central1-a", "us-east1-b", "us-east4-a", "us-east1-d", "us-west2-a"]
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
}

variable "gcp_credentials_path" {
  type        = string
  description = "Caminho para o arquivo de credenciais do GCP"
}