data "newrelic_entity" "apm" {
 for_each = var.entity
  name   =  each.value.entity_name  //"relicstaurants-new"
  type   = each.value.type          //"APPLICATION"
  domain = each.value.domain         //"APM"
}

resource "newrelic_entity_tags" "tags" {
  for_each = var.entity
  guid     = data.newrelic_entity.apm[each.key].guid


  tag {
    key    = "key11"
    values = ["value11"]
  }

  tag {
    key    = "key22"
    values = ["value22"]
  }
}