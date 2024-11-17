provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

provider "google" {
  region    = "us-central1-a"
  project   = "node-monitoring-yago"
  credentials = file(var.gcp_credentials_path)
}