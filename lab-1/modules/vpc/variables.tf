variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "vpc_name" {
  type        = string
  description = "Name of VPC"
}

variable "subnets" {
  type = map(object({
    name          = string
    ip_cidr_range = string
    region        = string
  }))
  description = "Subnets to create inside the VPC"
}
