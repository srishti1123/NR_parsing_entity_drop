module "entity" {
  source ="./entity"
  entity =var.entity
}
module "drop_rule" {
    source ="./drop_rule"
    drop =var.drop
}
module "parse" {
  source="./parsing"
  parse = var.parse
}
