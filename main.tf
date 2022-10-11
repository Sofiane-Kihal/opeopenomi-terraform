terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("<NAME>.json")

  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name = "test-bucket-opeopenomi-1"
}
