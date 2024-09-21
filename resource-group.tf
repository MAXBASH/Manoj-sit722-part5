#
# Creates a resource group
#
resource "azurerm_resource_group" "part5" {
  name     = "sit722projpart5"
  location = var.location
}
