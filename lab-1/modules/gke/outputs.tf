output "cluster_name" {
  value = google_container_cluster.autopilot.name
}

output "endpoint" {
  value = google_container_cluster.autopilot.endpoint
}

output "ca_certificate" {
  value = google_container_cluster.autopilot.master_auth.0.cluster_ca_certificate
}

output "location" {
  value = google_container_cluster.autopilot.location
}

output "cluster_id" {
  value = google_container_cluster.autopilot.id
}
