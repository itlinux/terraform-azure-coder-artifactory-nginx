resource "azurerm_resource_group" "dockercoderartinginx" {
    name     = var.rg_name
    location = var.region

    tags = {
        environment = "Demo"
        owner = "Remo Mattei"
    }
}