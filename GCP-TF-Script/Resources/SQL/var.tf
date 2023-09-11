variable "db-name" {
  type    = string
  default = "mysql-db"
}

variable "db-instance-name" {
  type    = string
  default = "mysql-instance-db"
}

variable "db-instance-region" {
  type    = string
  default = "us-central1"
}

variable "db-instance-version" {
  type    = string
  default = "MYSQL_8_0"
}

variable "db-instance-tier" {
  type    = string
  default = "db-f1-micro"
}