terraform {
  backend "gcs" {
    bucket      = "terraform-state-files_bucket"
    prefix      = "terraform/state"
    credentials = "/Users/rishiraj/Desktop/terraform-cred.json"
  }
}