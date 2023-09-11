data "http" "my_ip_address" {
  url = "https://api.ipify.org?format=text"
}

resource "google_compute_firewall" "only-ssh" {
  name    = var.firewall-name
  network = var.network
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["${data.http.my_ip_address.response_body}"]
  source_tags   = ["${var.ssh_tag}"]
}

resource "google_compute_firewall" "http" {
  name    = var.firewall2-name
  network = var.network2
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags   = ["${var.http_tag}"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "db" {
  name    = var.firewall3-name
  network = var.network3
  allow {
    protocol = "tcp"
    ports    = ["3306"]
  }

  source_tags   = ["${var.db_tag}"]
  source_ranges = var.app_network_range
}

output "firewall_ssh" {
  value = google_compute_firewall.only-ssh.name
}

output "firewall_http" {
  value = google_compute_firewall.http.name
}

output "firewall_db" {
  value = google_compute_firewall.db.name
}