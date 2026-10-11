output "containers_lookup_id" {
  description = "Map of id values across all containers_lookup, keyed the same as var.containers_lookup except keys with no id are omitted"
  value       = { for k, v in data.docker_containers.containers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containers_lookup_containers" {
  description = "Map of containers values across all containers_lookup, keyed the same as var.containers_lookup except keys with no containers are omitted"
  value       = { for k, v in data.docker_containers.containers_lookup : k => v.containers if v.containers != null && length(v.containers) > 0 }
}

