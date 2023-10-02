provider "google" {
  project     = "terraform-infra-397310"
  region      = "asia-south1"
  credentials = file("/Users/rishiraj/Downloads/Desktop-Files/terraform-cred.json")
}