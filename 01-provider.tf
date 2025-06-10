# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "~> 4.0"
#     }
#   }
# }

# provider "google" {
#   project = var.project_id
#   region  = var.region
# }

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
  region = "us-central1"
  project = "invictus-65"
  zone = "us-central1-a"
  credentials = "invictus-65-68db3f022f9f.json"

}

resource "google_storage_bucket" "bucket1" {
  name          = "invictus-65-bucket"
  location      = "us-central1"
  force_destroy = true

}