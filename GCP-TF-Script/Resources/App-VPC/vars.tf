variable "network_name" {
  type    = string
  default = "application-vpc"
}

variable "create_subnet" {
  type    = bool
  default = false
}

variable "subnet_network1_name" {
  type    = string
  default = "app-subnet-01"
}

variable "subnet_network1_range" {
  type    = string
  default = "10.0.1.0/24"
}

variable "subnet_network1_region" {
  type    = string
  default = "us-central1"
}

variable "subnet_network2_name" {
  type    = string
  default = "app-subnet-02"
}

variable "subnet_network2_range" {
  type    = string
  default = "10.0.2.0/24"
}

variable "subnet_network2_region" {
  type    = string
  default = "us-central1"
}
