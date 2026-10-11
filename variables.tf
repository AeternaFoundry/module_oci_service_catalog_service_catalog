variable "service_catalog_service_catalogs" {
  description = <<EOT
Map of service_catalog_service_catalogs, attributes below
Required:
    - compartment_id
    - display_name
Optional:
    - defined_tags
    - freeform_tags
    - status
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    status         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

