# <---------- VPC ----------> #
module "vpc-private" {
  source = "git@github.com:sebascaceresg/tf-gcp-vpc.git"

  region                        = var.region
  vpc_name                      = "tf-private-vpc"
  vpc_description               = "Private VPC"
  auto_create_subnetworks       = "true"
  routing_mode                  = var.routing_mode
  create_private_service_access = true
}
# <---------- Service Accounts ----------> #
module "service-account_circleci" {
  source = "git@github.com:sebascaceresg/tf-gcp-service-account.git"

  providers = {
    google             = google
    google.hub_project = google.hub_project
  }

  sa_prefix               = "circleci"
  project_id              = var.project_id
  account_id              = "tf-circleci-service"
  display_name            = "tf-circleci-service"
  account_description     = "tf-circleci-service"
  existing_role           = "roles/artifactregistry.writer"
  custom_role_id          = "customCircleCI"
  custom_role_title       = "[Custom] CircleCI Account"
  custom_role_description = "customCircleCI"
  custom_role_permissions = [
    "artifactregistry.dockerimages.get",
    "artifactregistry.dockerimages.get",
    "artifactregistry.dockerimages.list",
    "artifactregistry.files.get",
    "artifactregistry.files.list",
    "artifactregistry.locations.get",
    "artifactregistry.locations.list",
    "artifactregistry.packages.get",
    "artifactregistry.packages.list",
    "artifactregistry.projectsettings.get",
    "artifactregistry.repositories.downloadArtifacts",
    "artifactregistry.repositories.get",
    "artifactregistry.repositories.list",
    "artifactregistry.repositories.listEffectiveTags",
    "artifactregistry.repositories.listTagBindings",
    "artifactregistry.repositories.update",
    "artifactregistry.repositories.uploadArtifacts",
    "artifactregistry.tags.create",
    "artifactregistry.tags.delete",
    "artifactregistry.tags.get",
    "artifactregistry.tags.list",
    "artifactregistry.tags.update",
    "artifactregistry.versions.get",
    "artifactregistry.versions.list",
    "container.clusters.get",
    "container.configMaps.get",
    "container.namespaces.get",
    "container.secrets.get",
    "secretmanager.versions.access",
    "storage.buckets.create",
    "storage.buckets.createTagBinding",
    "storage.buckets.get",
    "storage.buckets.list",
    "storage.buckets.listEffectiveTags",
    "storage.buckets.listTagBindings",
    "storage.buckets.update",
    "storage.objects.create",
    "storage.objects.get",
    "storage.objects.list",
    "storage.objects.update"
  ]
}

