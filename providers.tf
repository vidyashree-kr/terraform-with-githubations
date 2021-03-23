provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "terraform-automation-gcp"
    prefix = "terraform/state"
  }
}
