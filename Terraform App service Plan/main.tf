resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

#resource "azurerm_service_plan" "appserviceplan" {
 # name                = var.app_service_plan_name
  #location            = azurerm_resource_group.rg.location
  #resource_group_name = azurerm_resource_group.rg.name
  #kind = "Linux"
  #reserved = true
  #sku {
   # tier = "Standard"
    #size = "S1"
  #}
#}
resource "azurerm_service_plan" "service-plan" {
  name = var.app_service_plan_name
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "F1"
  tags = {
    environment = "dev"
  }
}