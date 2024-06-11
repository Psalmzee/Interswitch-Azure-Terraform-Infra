
resource "azurerm_resource_group" "dev" {
  name     = "aks-dev-resource-group"
  location = var.location
}

module "aks" {
  source              = "../../modules/aks"
  resource_group_name = azurerm_resource_group.dev.name
  location            = azurerm_resource_group.dev.location
  cluster_name        = var.cluster_name
  node_count          = 2
  node_size           = "Standard_DS2_v2"
}

module "acr" {
  source              = "../../modules/acr"
  resource_group_name = azurerm_resource_group.dev.name
  location            = azurerm_resource_group.dev.location
  acr_name            = var.acr_name
}
