variable "fqdn" {
  default = "demo-in-westus2"
}
variable "prefix" {
  default = "remomattei"
}
variable "linux_vm_name" {
  default = "linbox"
}
variable "rg_name" {
  default = "remodockerdemo"
}
variable "vnet_name" {
  default = "vnet"
}
variable "network_cidr" {
  default = "10.0.0.0/8"
}
variable "subnet_cidr" {
  default = "10.1.0.0/24"
}
variable "ssh_user" {
  default = "itlinux"
}
variable "username" {
  default = "A1Workshop"
}
variable "user_email" {
  default = "nobody@example.com"
}
variable "network_name" {
  default = "remo-network"
}
variable "subnet_name" {
  default = "remo-subnet"
}
variable "pip_name" {
  default = "remo-pip"
}
variable "instance_name" {
  default = "remo-test-tf-instance"
}
variable "machine_type_selected" {
  default = "Standard_DS2_v2"
}
variable "publisher" {
  default = "OpenLogic"
}
variable "offer" {
  default = "CentOs"
}
variable "sku" {
  default = "7.5"
}
variable "linux_image" {
  default = "centos-cloud/centos-7"
}
variable "source_tags" {
  default = "remo-home"
}
variable "region" {
  default = "westus 2"
}
