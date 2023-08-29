resource "google_compute_network" "db-network" {
  name                    = "database-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork1" {
  name          = "db-subnet-01"
  ip_cidr_range = "11.0.1.0/24"
  region        = "asia-east1"
  network       = google_compute_network.db-network.id
}

resource "google_compute_subnetwork" "subnetwork2" {
  name          = "db-subnet-02"
  ip_cidr_range = "11.0.2.0/24"
  region        = "asia-east1"
  network       = google_compute_network.db-network.id
}

resource "google_compute_subnetwork" "subnetwork3" {
  name          = "db-subnet-03"
  ip_cidr_range = "11.0.3.0/24"
  region        = "asia-east1"
  network       = google_compute_network.db-network.id
}

output "db-vpc" {
  value = google_compute_network.db-network.id
}