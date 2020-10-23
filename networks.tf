resource "azurerm_virtual_network" "dockernetwork" {
    name                = "${var.prefix}-${var.vnet_name}"
    address_space       = [var.network_cidr]
    location            = var.region
    resource_group_name = azurerm_resource_group.dockercoderartinginx.name

    tags = {
        environment = "Demo"
        owner = "Remo Mattei"
    }
}
resource "azurerm_subnet" "dockersubnet" {
  name                 = "dockersub"
  resource_group_name  = azurerm_resource_group.dockercoderartinginx.name
  virtual_network_name = azurerm_virtual_network.dockernetwork.name
  address_prefixes     = [var.subnet_cidr]
}

resource "azurerm_public_ip" "pip" {
  name                    = "docker_pip"
  location                = azurerm_resource_group.dockercoderartinginx.location
  resource_group_name     = azurerm_resource_group.dockercoderartinginx.name
  domain_name_label       = "${var.linux_vm_name}${var.fqdn}"
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = 30

  tags = {
    environment = "Demo"
    owner = "Remo Mattei"
  }
}

resource "azurerm_network_interface" "dockernic" {
  name                = "docker-nic"
  location            = azurerm_resource_group.dockercoderartinginx.location
  resource_group_name = azurerm_resource_group.dockercoderartinginx.name

  ip_configuration {
    name                          = "ip_configuration"
    subnet_id                     = azurerm_subnet.dockersubnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.1.0.5"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}
