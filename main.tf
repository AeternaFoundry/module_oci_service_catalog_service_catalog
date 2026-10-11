resource "oci_service_catalog_service_catalog" "service_catalog_service_catalogs" {
  for_each = var.service_catalog_service_catalogs

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags
  status         = each.value.status

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

