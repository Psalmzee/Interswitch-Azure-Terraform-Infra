module "aks" {
  source              = "../../modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_name        = var.cluster_name
  node_count          = 2
  node_size           = "Standard_DS2_v2"
}

module "acr" {
  source              = "../../modules/acr"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
}
