terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("../sa/opeopenomi-dev-c0de98b85b02.json")

  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name = "test-bucket-opeopenomi-1"
}
