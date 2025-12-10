variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for all GCP resources"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Name of the GKE Autopilot cluster"
  type        = string
}

variable "vpc_name" {
  description = "Name of the custom VPC network"
  type        = string
}

variable "subnets" {
  description = "Map of subnets to create"
  type = map(object({
    name          = string
    ip_cidr_range = string
    region        = string
  }))
}
