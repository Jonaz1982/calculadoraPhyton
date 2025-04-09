resource "azurerm_mssql_server" "sql" {
  name                         = "sqlserver-principal"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = var.sql_admin_password
}