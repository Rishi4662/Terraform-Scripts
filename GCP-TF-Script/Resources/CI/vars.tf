variable "server_size" {
  type    = string
  default = "e2-medium"
}

variable "server_az" {
  type    = string
  default = "us-central1-a"
}

variable "firewall_tags" {}
variable "subnetwork_name" {}