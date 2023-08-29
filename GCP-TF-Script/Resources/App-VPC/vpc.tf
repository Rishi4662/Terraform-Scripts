resource "google_compute_network" "network" {
  name                    = "application-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork1" {
  name          = "app-subnet-01"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.network.id
}

resource "google_compute_subnetwork" "subnetwork2" {
  name          = "app-subnet-02"
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-central1"
  network       = google_compute_network.network.id
}

output "app-vpc" {
  value = google_compute_network.network.id
}