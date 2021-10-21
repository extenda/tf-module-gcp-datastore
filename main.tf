resource "google_datastore_index" "ds_index" {
  for_each = { for i in var.indexes : "${i.kind}" => i }

  kind     = each.value.kind
  project  = var.project_id
  ancestor = lookup(each.value, "ancestor", "NONE")


  dynamic properties {
    for_each = contains(keys(each.value), "properties") ? each.value.properties : []

    content {
      name      = lookup(properties.value, "name", "")
      direction = lookup(properties.value, "direction", "ASCENDING")
    }
  }
}
