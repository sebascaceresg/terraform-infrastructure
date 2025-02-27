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
# <---------- Storage ----------> #
module "storage_bucket" {
  source = "git@github.com:sebascaceresg/tf-gcp-storage.git"

  bucket_name     = "tf-hub_bucket-452117"
  bucket_location = "us-central1"
}
