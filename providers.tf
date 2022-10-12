terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.40.0"
    }
  }
}

cloud {
  organization = "opeopenomi"

  workspaces {
    name = "gcp-actions-demo"
  }
}

provider "google" {
  credentials = var.GOOGLE_CREDENTIALS

  project = var.project_id
  region  = var.region
}
