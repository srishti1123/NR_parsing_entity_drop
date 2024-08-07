variable "entity" {
  type=map(object({
    entity_name = string
    type= string
    domain =string 
  }))
}