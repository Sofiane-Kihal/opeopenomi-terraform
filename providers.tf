provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "opeopenomi-terraform-dev"
    prefix = "terraform/state"
  }
}
