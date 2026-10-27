output "synchronization_secrets_id" {
  description = "Map of id values across all synchronization_secrets, keyed the same as var.synchronization_secrets"
  value       = { for k, v in azuread_synchronization_secret.synchronization_secrets : k => v.id }
}
output "synchronization_secrets_credential" {
  description = "Map of credential values across all synchronization_secrets, keyed the same as var.synchronization_secrets"
  value       = { for k, v in azuread_synchronization_secret.synchronization_secrets : k => v.credential }
  sensitive   = true
}
output "synchronization_secrets_service_principal_id" {
  description = "Map of service_principal_id values across all synchronization_secrets, keyed the same as var.synchronization_secrets"
  value       = { for k, v in azuread_synchronization_secret.synchronization_secrets : k => v.service_principal_id }
}

