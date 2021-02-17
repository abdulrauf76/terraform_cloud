
output "vnet_id"{
    value = azurerm_virtual_network.vnet.id
    description = "vnet ID"
}

/*
output "vnet_id"{
    value = data.azurerm_virtual_network.mydata.id
    description = "vnet ID"
}

*/