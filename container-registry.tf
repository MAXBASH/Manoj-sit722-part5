#
# Creates a container registry on Azure
# 
resource "azurerm_container_registry" "container_registry" {
  name                = "sit722projpart5"
  resource_group_name = azurerm_resource_group.part5.name
  location            = "australiasoutheast"
  admin_enabled       = true
  sku                 = "Basic"
}