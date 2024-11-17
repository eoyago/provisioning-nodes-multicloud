output "gcp_nodes_output" {
  value = google_compute_instance.gcp_nodes[*].name
}
