resource "azurerm_resource_group" "rgblock" {
  for_each = var.resource_group
  name = each.value.resourcename
  location = each.value.location
}

resource "azurerm_virtual_network" "vnetblock" {
    for_each = var.vnets
    name = each.value.vnetname
  resource_group_name = azurerm_resource_group.rgblock["rg1"].name
location = azurerm_resource_group.rgblock["rg1"].location
address_space = each.value.addspc
}