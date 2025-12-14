# -------------------------------
# GKE AUTOPILOT CLUSTER MODULE
# -------------------------------

resource "google_service_account" "gke_sa" {
  account_id   = "${var.cluster_name}-sa"
  display_name = "GKE Autopilot Service Account"
}

# IAM roles that the GKE service account needs
resource "google_project_iam_member" "roles" {
  for_each = toset([
    "roles/container.admin",
    "roles/iam.serviceAccountUser",
    "roles/compute.networkAdmin",
  ])

  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
}

# AUTOPILOT GKE CLUSTER
resource "google_container_cluster" "autopilot" {
  name             = var.cluster_name
  location         = var.region
  project          = var.project_id
  network          = var.network_id
  subnetwork       = var.subnet_id
  enable_autopilot = true

  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
  }

  release_channel {
    channel = "REGULAR"
  }
}

