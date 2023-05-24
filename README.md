# Terraform

Repo dédié à un module Terraform qui peut créer des VNET sur Azure et créer un peering entre ces réseaux

# Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg-01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet-priv-01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.subnet-pub-01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet-01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_virtual_network_peering.Peering_1to2](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |
| [azurerm_virtual_network_peering.Peering_2to1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_CIDR_BLOCK"></a> [CIDR\_BLOCK](#input\_CIDR\_BLOCK) | Doit impérativement être en /21 (ex : 10.15.0.0/21) | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Variable ajouté entre le prefixe et le type de ressource (souvent prod ou dev) | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Emplacement de créer du réseau virtuel | `string` | `"West Europe"` | no |
| <a name="input_peering_vnet_id"></a> [peering\_vnet\_id](#input\_peering\_vnet\_id) | ID du réseau virtuel avec lequel on veux créer un peering | `string` | `""` | no |
| <a name="input_peering_vnet_name"></a> [peering\_vnet\_name](#input\_peering\_vnet\_name) | Nom du réseau virtuel avec lequel on veux créer un peering | `string` | `""` | no |
| <a name="input_peering_vnet_rg"></a> [peering\_vnet\_rg](#input\_peering\_vnet\_rg) | Nom du groupe de ressource du réseau virtuel avec lequel on veux créer un peering | `string` | `""` | no |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | Utilisé au début du nom de chaque ressource | `string` | n/a | yes |
| <a name="input_tag"></a> [tag](#input\_tag) | Tag à ajouter au Réseau virtuel créé (format : {TagName = "TagValue"}) | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | ID du Réseau Virtuel |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | Nom du Réseau Virtuel |
| <a name="output_vnet_rg"></a> [vnet\_rg](#output\_vnet\_rg) | n/a |
<!-- END_TF_DOCS -->

# Exemple

TO DO
