resource "azurerm_resource_group" "rgblock" {
  for_each = var.resource_group
  name     = each.value.resourcename
  location = each.value.location
}

resource "azurerm_virtual_network" "vnetblock" {
  for_each            = var.vnets
  name                = each.value.vnetname
  resource_group_name = azurerm_resource_group.rgblock["rg1"].name
  location            = azurerm_resource_group.rgblock["rg1"].location
  address_space       = each.value.addspc
}

resource "azurerm_storage_account" "storageblock" {
  for_each                 = var.storage_accounts
  name                     = each.value.storage_name
  resource_group_name      = azurerm_resource_group.rgblock[each.value.resource_group_key].name
  location                 = azurerm_resource_group.rgblock[each.value.resource_group_key].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  min_tls_version          = "TLS1_2"
}

