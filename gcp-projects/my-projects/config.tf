terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "my-projects-450518"

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

provider "google" {
  alias   = "hub_project"
  region  = "us-central1"
  project = "hub-project-452117"
}

