variable "location" {
  description = "Azure region"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "aks_name_1" {
  description = "Name of the first AKS cluster"
  type        = string
}

variable "aks_name_2" {
  description = "Name of the second AKS cluster"
  type        = string
}

variable "node_vm_size" {
  description = "VM size for AKS nodes"
  type        = string
}

variable "node_min_count" {
  description = "Minimum node count for AKS autoscaling"
  type        = number
}

variable "node_max_count" {
  description = "Maximum node count for AKS autoscaling"
  type        = number
}
