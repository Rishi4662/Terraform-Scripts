variable "network_name" {
  type    = string
  default = "database-vpc"
}

variable "create_subnet" {
  type    = bool
  default = false
}

variable "subnet_network1_name" {
  type    = string
  default = "db-subnet-01"
}

variable "subnet_network1_range" {
  type    = string
  default = "11.0.1.0/24"
}

variable "subnet_network1_region" {
  type    = string
  default = "asia-east1"
}

variable "subnet_network2_name" {
  type    = string
  default = "db-subnet-02"
}

variable "subnet_network2_range" {
  type    = string
  default = "11.0.2.0/24"
}

variable "subnet_network2_region" {
  type    = string
  default = "asia-east1"
}

variable "subnet_network3_name" {
  type    = string
  default = "db-subnet-03"
}

variable "subnet_network3_range" {
  type    = string
  default = "11.0.3.0/24"
}

variable "subnet_network3_region" {
  type    = string
  default = "asia-east1"
}
