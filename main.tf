module "labels" {
  source  = "git::git@github.com:cloudlovers/terraform-google-labels.git"


  name        = var.name
  environment = var.environment
  label_order = var.label_order
}

resource "google_compute_firewall" "rules" {
  count = var.google_compute_firewall_enabled && var.module_enabled ? 1 : 0

  project     = var.project_id
  name        = module.labels.name
  network     = var.network
  description = var.description

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  source_ranges = var.source_ranges

}
