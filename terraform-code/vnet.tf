resource azureurm_virtual_network "vnet" {
    name = join("-", ["github", "vnet", "actions"])
    location = "uksouth"
    address = ["192.168.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
}

resource azurerm_subnet "snet" {
    name = join("-", ["github", "actions", "subnet"])
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet
    address_prefix = "192.168.0.0/24"
}