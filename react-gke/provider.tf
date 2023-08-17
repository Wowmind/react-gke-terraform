terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.3.0"
    }
  }
}

terraform {
  backend "gcs" {
    bucket = "react-gke-storage"
    prefix = "terraform/state"
  }
}

provider "google" {
    region = var.region
    zone = var.zone
    project = var.project
    credentials = var.credentials
}