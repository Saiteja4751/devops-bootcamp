project_id   = "your-gcp-project-id"
region       = "us-central1"
cluster_name = "my-autopilot-cluster"
vpc_name     = "my-custom-vpc"

subnets = {
  primary = {
    name          = "primary-subnet"
    ip_cidr_range = "10.10.0.0/24"
    region        = "us-central1"
  }
}
