
provider "google" {
  credentials = file("/Users/MMR12/Secrets/terraform-sa-kube-demo.json")
  project     = var.project
  region      = var.region
}

provider "google-beta" {
  credentials = file("/Users/MMR12/Secrets/terraform-sa-kube-demo.json")
  project     = var.project
  region      = var.region
}


resource "google_cloudbuild_trigger" "cloud_build_trigger" {
  provider    = google-beta
  name = "sky-demo-build-trigger"
  description = "Cloud Source Repository Trigger ${var.github_repository} (${var.branch_name})"

    github {
    owner = var.github_owner
    name  = var.github_repository
    push {
      branch = var.branch_name
    }
  }

  filename = "cloudbuild.yaml"
}