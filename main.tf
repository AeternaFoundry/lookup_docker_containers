data "docker_containers" "containers_lookup" {
  for_each = var.containers_lookup

}

