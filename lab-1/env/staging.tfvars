project_id = "staging-gcp-project"

region = "us-central1"

vpc_name    = "staging-autopilot-vpc"
subnet_name = "staging-autopilot-subnet"
subnet_cidr = "10.30.0.0/24"

pods_cidr     = "10.40.0.0/16"
services_cidr = "10.41.0.0/20"

cluster_name = "staging-autopilot-cluster"

cluster_secondary_range_name  = "pods"
services_secondary_range_name = "services"

enabled = true
