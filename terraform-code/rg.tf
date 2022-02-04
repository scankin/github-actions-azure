resource azurerm_resource_group "rg" {
    name = join("-", ["actions", "sample", "rg", "uks"])
    location = "uksouth"
}