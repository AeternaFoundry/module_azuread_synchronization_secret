resource "azuread_synchronization_secret" "synchronization_secrets" {
  for_each = var.synchronization_secrets

  service_principal_id = each.value.service_principal_id

  dynamic "credential" {
    for_each = each.value.credential != null ? each.value.credential : []
    content {
      key   = credential.value.key
      value = credential.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

