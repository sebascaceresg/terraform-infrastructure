terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "hub-project-452117"

    workspaces {
      name = "my-workspace"
    }
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.10.0"
    }
  }
}

provider "google" {
  region  = var.region
  project = var.project_id
}

