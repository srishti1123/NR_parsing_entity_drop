variable "drop" {
  type =map(object({
    account_id = number
     action =string
     nrql = string
  }))
}