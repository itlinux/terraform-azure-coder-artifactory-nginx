# Create virtual network
resource "azurerm_virtual_network" "dockernetwork" {
    name                = "docker-Vnet"
    address_space       = ["10.0.0.0/16"]
    location                     = azurerm_resource_group.dockercoderartinginx.location
    resource_group_name = azurerm_resource_group.dockercoderartinginx.name

    tags = {
        environment = "Demo"
        owner = "Remo Mattei"
    }
}

# Create subnet
resource "azurerm_subnet" "dockersubnet" {
    name                 = "docker-Subnet"
    resource_group_name  = azurerm_resource_group.dockercoderartinginx.name
    virtual_network_name = azurerm_virtual_network.dockernetwork.name
    address_prefixes       = ["10.0.1.0/24"]
}

# Create public IPs
resource "azurerm_public_ip" "dockerpip" {
    name                         = "docker-PublicIP"
    location                     = azurerm_resource_group.dockercoderartinginx.location
    resource_group_name          = azurerm_resource_group.dockercoderartinginx.name
    allocation_method            = "Dynamic"

    tags = {
        environment = "Demo"
        owner = "Remo Mattei"
    }
}
