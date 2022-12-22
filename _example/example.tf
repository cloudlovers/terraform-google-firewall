provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}

module "vpc" {
  source  = "git::git@github.com:cloudlovers/terraform-gcp-vpc.git"

  name                           = "vpc"
  environment                    = "test"
  label_order                    = ["environment", "name"]
  google_compute_network_enabled = true
}

module "firewall" {
  source = "../"

  name                            = "test-firewall"
  module_enabled                  = true
  google_compute_firewall_enabled = true
  project_id                      = var.gcp_project_id
  network                         = module.vpc.vpc_id
  description                     = "Creates firewall rule targeting tagged instances."
  protocol                        = "TCP"
  ports                           = ["80", "4440", "443", "22"]
  source_ranges                   = ["0.0.0.0/0"]

}