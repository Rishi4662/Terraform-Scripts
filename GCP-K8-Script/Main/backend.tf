terraform {
  backend "gcs" {
    bucket      = "k8-tf-state-file-space"
    prefix      = "terraform/state"
    credentials = "/Users/rishiraj/Downloads/Desktop-Files/terraform-cred.json"
  }
}