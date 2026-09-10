variable "project_id" {
  description = "The GCP project ID to deploy resources into."
  type        = string
}

variable "region" {
  description = "The GCP region for resources."
  type        = string
  default     = "us-central1"
}

variable "location" {
  description = "The GCP location for the storage bucket."
  type        = string
  default     = "US"
}

variable "sa_prefix" {
  description = "Prefix for the service account ID."
  type        = string
  default     = "sa-app"
}

variable "bucket_prefix" {
  description = "Prefix for the Cloud Storage bucket name."
  type        = string
  default     = "simple-bucket"
}
