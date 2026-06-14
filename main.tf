



# resource "azurerm_resource_group" "rg" {  this block works 1
#   name     = var.resource_group_name
#   location = var.location
# }




resource "azurerm_resource_group" "rg" {
  for_each = var.rgs
  name = each.value.name
  location= each.value.location
  
  }

  
  
