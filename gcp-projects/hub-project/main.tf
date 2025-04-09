# <------------ VPC ------------> #
module "shared-vpc-private" {
  source = "git@github.com:sebascaceresg/terraform-modules.git//GCP/vpc?ref=master"

  # VPC #
  region                  = var.region
  project_id              = var.project_id
  vpc_name                = "tf-private-shared-vpc"
  vpc_description         = "Private Shared VPC for hub-project"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"

  # PSA/PSC #
  create_private_service_access = true
  ip_address                    = "10.240.0.0"
  prefix_length                 = 24
  ip_address_type               = "INTERNAL"
  psa_purpose                   = "VPC_PEERING"

}
