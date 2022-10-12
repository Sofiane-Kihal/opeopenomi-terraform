resource "google_storage_bucket" "bucket_2" {
  name                        = "test-bucket-opeopenomi-2"
  location                    = var.bucket_location
  uniform_bucket_level_access = true
  storage_class               = "STANDARD"
  versioning {
    enabled = true
  }
}