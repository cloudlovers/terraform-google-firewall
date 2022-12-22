output "self_link" {
  value       = join("", google_compute_firewall.rules.*.self_link)
  description = "The URI of the created resource."
}

output "id" {
  value       = join("", google_compute_firewall.rules.*.id)
  description = "Name of the resource. Provided by the client when the resource is created."
}

output "name" {
  value       = join("", google_compute_firewall.rules.*.name)
  description = "an identifier for the resource with format"
}