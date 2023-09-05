variable "firewall-name" {
  type    = string
  default = "ssh"
}

variable "network" {}

variable "firewall2-name" {
  type    = string
  default = "http"
}
variable "network2" {}

variable "firewall3-name" {
  type    = string
  default = "db"
}

variable "network3" {}

variable "ssh_tag" {
  type    = string
  default = "ssh"
}

variable "http_tag" {
  type    = string
  default = "http"
}

variable "db_tag" {
  type    = string
  default = "db"
}

variable "app_network_range" {
  type = list(any)
}