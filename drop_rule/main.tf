resource "newrelic_nrql_drop_rule" "drop" {
  for_each =var.drop
  account_id  = each.value.account_id
  action      = each.value.action
  nrql        = each.value.nrql
}