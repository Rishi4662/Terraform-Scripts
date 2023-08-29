provider "google" {
  project     = "terraform-infra-397310"
  region      = "us-central1"
  credentials = "${file("/Users/rishiraj/Desktop/terraform-cred.json")}"
}