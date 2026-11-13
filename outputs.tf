output "containers_lookup_id" {
  description = "Map of id values across all containers_lookup, keyed the same as var.containers_lookup"
  value       = { for k, v in data.docker_containers.containers_lookup : k => v.id }
}
output "containers_lookup_containers" {
  description = "Map of containers values across all containers_lookup, keyed the same as var.containers_lookup"
  value       = { for k, v in data.docker_containers.containers_lookup : k => v.containers }
}

