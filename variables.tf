variable "CIDR_BLOCK" {
  type        = string
  description = "Doit impérativement être en /21 (ex : 10.15.0.0/21)"
}

variable "prefix_name" {
  type        = string
  description = "Utilisé au début du nom de chaque ressource"
}

variable "env" {
  type        = string
  description = "Variable ajouté entre le prefixe et le type de ressource (souvent prod ou dev)"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Emplacement de créer du réseau virtuel"
}

variable "tag" {
  type        = map(string)
  description = "Tag à ajouter au Réseau virtuel créé (format : {TagName = \"TagValue\"})"
}

variable "peering_vnet_id" {
  type        = string
  default     = ""
  description = "ID du réseau virtuel avec lequel on veux créer un peering"
}

variable "peering_vnet_name" {
  type        = string
  default     = ""
  description = "Nom du réseau virtuel avec lequel on veux créer un peering"

}

variable "peering_vnet_rg" {
  type        = string
  default     = ""
  description = "Nom du groupe de ressource du réseau virtuel avec lequel on veux créer un peering"

}
