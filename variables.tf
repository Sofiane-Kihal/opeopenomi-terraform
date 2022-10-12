variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
}

variable "region" {
  type    = string
  default = "europe-west1"
}

variable "bucket_location" {
  default = "europe-west1"
}

variable "GOOGLE_CREDENTIALS" {
  
}
