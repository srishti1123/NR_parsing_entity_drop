variable "drop" {
  type =map(object({
    account_id = number
     action =string
     nrql = string
  }))
}
variable "entity" {
  type=map(object({
    entity_name = string
    type= string
    domain =string 
  }))
}
variable "parse" {
  type = any
}