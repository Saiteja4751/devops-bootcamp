terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# ----------------------------
# VPC MODULE
# ----------------------------
module "vpc" {
  source       = "./modules/vpc"
  project_id   = var.project_id
  vpc_name     = var.vpc_name
  subnets      = var.subnets
}

# ----------------------------
# GKE MODULE
# ----------------------------
module "gke" {
  source         = "./modules/gke"
  project_id     = var.project_id
  region         = var.region
  cluster_name   = var.cluster_name
  network        = module.vpc.vpc_name
  subnetwork     = module.vpc.subnets["primary"].name
}
