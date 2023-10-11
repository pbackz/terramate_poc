// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "cloud_run_app" {
  iam = [
    {
      role = "roles/run.invoker"
      members = [
        "allUsers",
      ]
    },
  ]
  image                = "gcr.io/cloudrun/hello:latest"
  location             = "europe-north1"
  name                 = "terramate-app1-prod"
  project              = "wianalytics-vo"
  service_account_name = "cloud-run@wianalytics-vo.iam.gserviceaccount.com"
  source               = "../../../../modules/cloud-run"
}
output "url" {
  description = "URL of terramate-app1-prod"
  value       = module.cloud_run_app.service.status[0].url
}
