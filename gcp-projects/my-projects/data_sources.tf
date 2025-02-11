data "google_service_account_access_token" "default" {
  target_service_account = "terraform-service@my-projects-450518.iam.gserviceaccount.com"
  scopes                 = ["userinfo-email", "cloud-platform"]
  lifetime               = "300s"
}
