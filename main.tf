terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.40.0"
    }
  }
}

provider "google" {
  credentials = var.GOOGLE_CREDENTIALS

  project = var.project_id
  region  = var.region
}

cloud {
  organization = "opeopenomi"

  workspaces {
    name = "gcp-actions-demo"
  }
}

resource "google_storage_bucket" "bucket_2" {
  name                        = "test-bucket-opeopenomi-2"
  location                    = var.bucket_location
  uniform_bucket_level_access = true
  storage_class               = "STANDARD"
  versioning {
    enabled = true
  }
}