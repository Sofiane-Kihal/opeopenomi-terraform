provider "google" {
  project = var.project_id
  region  = var.region
  credentials_file = ${{ secrets.GOOGLE_CREDENTIALS }}
}

terraform {
  backend "gcs" {
    bucket = "opeopenomi-terraform-dev"
    prefix = "terraform/state"
  }
}
