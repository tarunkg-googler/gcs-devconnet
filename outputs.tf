output "service_account_id" {
  description = "The ID of the created service account."
  value       = google_service_account.service_account.id
}

output "service_account_email" {
  description = "The email of the created service account."
  value       = google_service_account.service_account.email
}

output "bucket_name" {
  description = "The name of the created Cloud Storage bucket."
  value       = module.gcs_bucket.bucket_name
}

output "bucket_url" {
  description = "The URI of the created Cloud Storage bucket."
  value       = module.gcs_bucket.bucket_url
}

output "public_bucket_name" {
  value       = module.public_service.name
  description = "Bucket name created by public module"
}
