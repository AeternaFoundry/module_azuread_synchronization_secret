variable "synchronization_secrets" {
  description = <<EOT
Map of synchronization_secrets, attributes below
Required:
    - service_principal_id
Optional:
    - credential (block):
        - key (required)
        - value (required)
EOT

  type = map(object({
    service_principal_id = string
    credential = optional(list(object({
      key   = string
      value = string
    })))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

