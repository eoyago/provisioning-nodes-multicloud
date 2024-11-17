variable "gcp_regions" {
  description = "List of GCP regions"
  type        = list(string)
  default     = ["us-central1-a", "us-east1-b", "us-east4-a", "us-east1-d", "us-west2-a"]
}
