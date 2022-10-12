resource "google_storage_bucket" "bucket_3" {
  name                        = "test-bucket-opeopenomi-3"
  location                    = var.bucket_location
  uniform_bucket_level_access = true
  storage_class               = "STANDARD"
  versioning {
    enabled = true
  }
}