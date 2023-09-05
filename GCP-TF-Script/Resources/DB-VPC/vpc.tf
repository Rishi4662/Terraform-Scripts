resource "google_compute_network" "db-network" {
  name                    = var.network_name
  auto_create_subnetworks = var.create_subnet
}

resource "google_compute_subnetwork" "subnetwork1" {
  name          = var.subnet_network1_name
  ip_cidr_range = var.subnet_network1_range
  region        = var.subnet_network1_region
  network       = google_compute_network.db-network.id
}

resource "google_compute_subnetwork" "subnetwork2" {
  name          = var.subnet_network2_name
  ip_cidr_range = var.subnet_network2_range
  region        = var.subnet_network2_region
  network       = google_compute_network.db-network.id
}

resource "google_compute_subnetwork" "subnetwork3" {
  name          = var.subnet_network3_name
  ip_cidr_range = var.subnet_network3_range
  region        = var.subnet_network3_region
  network       = google_compute_network.db-network.id
}

output "db-vpc" {
  value = google_compute_network.db-network.id
}