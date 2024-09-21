#
# Creates Kubernetes cluster on Azure.
#
resource "azurerm_kubernetes_cluster" "cluster" {
    name                = "sit722projpart5"
    location            = "australiasoutheast"
    resource_group_name = azurerm_resource_group.part5.name
    dns_prefix          = "sit722projpart5"
    kubernetes_version  = "1.31.0"

    default_node_pool {
        name            = "default"
        node_count      = 1
        vm_size         = "Standard_B2s"
    }

    #
    # Instead of creating a service principle have the system figure this out.
    #
    identity {
        type = "SystemAssigned"
    }    
}

#
# Attaches the container registry to the cluster.
#
resource "azurerm_role_assignment" "role_assignment" {
  principal_id                     = azurerm_kubernetes_cluster.cluster.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.container_registry.id
  skip_service_principal_aad_check = true
}
