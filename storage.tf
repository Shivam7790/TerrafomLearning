resource "azurerm_storage_account" "sa" {
  for_each = var.storage_accounts

  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.rg[each.value.rg].name
  location                 = azurerm_resource_group.rg[each.value.rg].location

  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  for_each = var.storage_accounts

  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.sa[each.key].id
  container_access_type = "private"
}