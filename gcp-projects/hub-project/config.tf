terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "hub-project-452117"

    workspaces {
      name = "hub-project-infrastructure"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.28.0"
    }
  }
}

provider "google" {
  region  = var.region
  project = var.project_id
}
