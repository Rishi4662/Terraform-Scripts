resource "google_container_cluster" "container-primary" {
  name                     = "rishi-container-test"
  location                 = "asia-south1-a"
  initial_node_count       = 1
  remove_default_node_pool = true
}

resource "google_container_node_pool" "container_node_pool" {
  name       = "node-pool-001"
  location   = "asia-south1-a"
  cluster    = google_container_cluster.container-primary.name
  node_count = 3
  node_config {
    machine_type = "e2-micro"
    disk_size_gb = 10
    disk_type    = "pd-standard"
    labels = {
      name = "rishik8"
    }
    tags = ["name", "rishik8"]
  }
}