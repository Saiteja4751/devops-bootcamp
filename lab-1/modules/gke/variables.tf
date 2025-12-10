variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  description = "GKE region"
}

variable "cluster_name" {
  type        = string
  description = "GKE Autopilot cluster name"
}

variable "network" {
  type        = string
  description = "VPC network name"
}

variable "subnetwork" {
  type        = string
  description = "Subnetwork where GKE nodes and pods will run"
}
