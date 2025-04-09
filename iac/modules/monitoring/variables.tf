variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "aks_clusters" {
  type = list(string)
}

variable "k8s_host" {}
variable "k8s_client_certificate" {}
variable "k8s_client_key" {}
variable "k8s_cluster_ca_certificate" {}