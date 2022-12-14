variable "name" {}

variable "rg" {
  type = object({
    name = string
    location = string
  })
}

variable "vnet" {
  type = object({
    name = string
  })
}

variable "address_prefixes" {
  type = list(string)
}

variable "vnet2vnet_conns" {
  type = map(object({
    gateway_id = string
    shared_key = string
  }))
  default = {}
}