variable "location" {
  type        = string
  description = "Ubicación de los recursos"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "sql_admin_user" {
  type        = string
  description = "Usuario administrador de SQL Server"
}

variable "sql_admin_password" {
  type        = string
  description = "Contraseña del administrador de SQL Server"
  sensitive   = true
}