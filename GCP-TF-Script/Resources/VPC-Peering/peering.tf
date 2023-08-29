resource "google_compute_network_peering" "peering1" {
  name         = "peering1"
  network      = var.first_network
  peer_network = var.second_network
}

resource "google_compute_network_peering" "peering2" {
  name         = "peering2"
  network      = var.second_network
  peer_network = var.first_network
}