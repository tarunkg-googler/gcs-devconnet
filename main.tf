resource "random_id" "suffix" {
  byte_length = 4
}

resource "google_service_account" "service_account" {
  account_id   = "${var.sa_prefix}-${random_id.suffix.hex}"
  display_name = "Service Account ${var.sa_prefix}-${random_id.suffix.hex}"
  description  = "Managed by Terraform with dynamic suffix"
  project      = var.project_id
}

module "gcs_bucket" {
  source                      = "./modules/gcs_bucket"
  project_id                  = var.project_id
  bucket_name                 = "${var.bucket_prefix}-${random_id.suffix.hex}"
  location                    = var.location
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true
}

module "public_service" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 6.0"
  names   = [var.public_bucket_name]
  project_id = var.project_id
}
