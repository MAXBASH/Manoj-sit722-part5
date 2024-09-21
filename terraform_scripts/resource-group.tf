#
# Creates a resource group
#
resource "azurerm_resource_group" "part5" {
  name     = var.app_name
  location = var.location
}
