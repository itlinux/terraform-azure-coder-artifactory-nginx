#based on the region this will change for west2 it it will be westus2.cloudapp.azure.com 
#or europe it will be westeurope.cloudapp.azure.com etc..
variable "fqdn" {
  default = "westus2"
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
  default = "remo-terraform"
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
variable "firewall_name" {
  default = "remo-firewall"
}
variable "source_tags" {
  default = "remo-home"
}

variable "priv_sshkey" {
  default = "~/.ssh/gcpf5"
}
variable "public_key_file" {
  default = "~/.ssh/gcpf5.pub"
}
variable "region" {
  default = "westus 2"
}
variable "allowed_ips" {
  type = map
  default = {
    ip1 = "166.70.92.176/32"
    ip2 = "172.10.163.251"
    ip3 = "99.109.51.251"
  }
}
