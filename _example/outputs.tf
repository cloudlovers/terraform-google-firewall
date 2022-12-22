output "id" {
  value       = module.firewall.*.id
  description = "Name of the resource. Provided by the client when the resource is created."
}

output "self_link" {
  value       = module.firewall.*.self_link
  description = "The URI of the created resource."
}