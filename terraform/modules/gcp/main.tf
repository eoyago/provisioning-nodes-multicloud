resource "google_compute_instance" "gcp_nodes" {
  count        = 5
  name         = "gcp-node-${count.index}"
  machine_type = "f1-micro"
  zone         = element(var.gcp_regions, count.index)
  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2204-jammy-v20241115"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}

output "gcp_nodes" {
  value = google_compute_instance.gcp_nodes[*].name
}
