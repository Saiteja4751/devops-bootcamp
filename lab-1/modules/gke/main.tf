resource "google_container_cluster" "autopilot" {
  name     = var.cluster_name
  location = var.region

  enable_autopilot = true

  network    = var.network
  subnetwork = var.subnetwork

  release_channel {
    channel = "REGULAR"
  }

  ip_allocation_policy {}
}
