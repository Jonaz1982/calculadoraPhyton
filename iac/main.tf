terraform {
  required_version = ">= 1.0.0"
  backend "azurerm" {}
}

module "network" {
  source              = "./modules/network"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "aks_cluster_1" {
  source              = "./modules/aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  cluster_name        = "aks-cluster-1"
}

module "aks_cluster_2" {
  source              = "./modules/aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  cluster_name        = "aks-cluster-2"
}

module "sqlserver" {
  source              = "./modules/sqlserver"
  location            = var.location
  resource_group_name = var.resource_group_name
  sql_admin_user      = var.sql_admin_user
  sql_admin_password  = var.sql_admin_password
}

module "monitoring" {
  source              = "./modules/monitoring"
  location            = var.location
  resource_group_name = var.resource_group_name
  aks_clusters        = [module.aks_cluster_1.cluster_name, module.aks_cluster_2.cluster_name]

  k8s_host                   = module.aks_cluster_1.k8s_host
  k8s_client_certificate     = module.aks_cluster_1.k8s_client_certificate
  k8s_client_key             = module.aks_cluster_1.k8s_client_key
  k8s_cluster_ca_certificate = module.aks_cluster_1.k8s_cluster_ca_certificate
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = "acrtestdevopsdemo"
  location            = var.location
  resource_group_name = var.resource_group_name
}
