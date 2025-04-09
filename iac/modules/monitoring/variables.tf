variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "aks_clusters" {
  type = list(string)
}