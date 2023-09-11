resource "google_compute_instance" "ci" {
  name         = "demo-server-01"
  machine_type = var.server_size
  zone         = var.server_az
  tags         = var.firewall_tags

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      labels = {
        my_label = "ubuntu"
      }
    }
  }

  network_interface {
    subnetwork = var.subnetwork_name
    access_config {
      // Ephermeral IP
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}