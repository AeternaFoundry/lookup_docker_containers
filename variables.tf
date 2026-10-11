variable "containers_lookup" {
  description = <<EOT
Map of containers_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

