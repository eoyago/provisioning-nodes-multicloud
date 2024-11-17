module "aws" {
  source       = "./modules/aws"
  aws_regions  = var.aws_regions
}

module "gcp" {
  source       = "./modules/gcp"
  gcp_regions  = var.gcp_regions
}

output "aws_nodes" {
  value = module.aws.aws_nodes
}

output "gcp_nodes" {
  value = module.gcp.gcp_nodes
}
