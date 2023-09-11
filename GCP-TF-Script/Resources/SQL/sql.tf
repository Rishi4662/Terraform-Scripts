resource "google_sql_database" "database" {
  name     = var.db-name
  instance = google_sql_database_instance.db-instance.name

}

resource "google_sql_database_instance" "db-instance" {
  name             = var.db-instance-name
  region           = var.db-instance-region
  database_version = var.db-instance-version
  settings {
    tier = var.db-instance-tier
  }

  deletion_protection = false
}