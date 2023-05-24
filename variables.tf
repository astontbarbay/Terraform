variable "CIDR_BLOCK" {
  type        = string
  description = "Doit impérativement être en /21 (ex : 10.15.0.0/21)"
}

variable "prefix_name" {
  type    = string
  default = "tbarbay"
}

variable "env" {
  type        = string
  description = "Variable ajouté entre le prefixe et le type de ressource (souvent prod ou dev)"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "tag" {
  type = map(string)
}

variable "peering_vnet_id" {
  type    = string
  default = ""

}

variable "peering_vnet_name" {
  type    = string
  default = ""

}

variable "peering_vnet_rg" {
  type    = string
  default = ""

}
