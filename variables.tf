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
variable "region" {
  default = "westus 2"
}
variable "ports" {
  default = [ "22","80","81","8080","8082"]
}
variable "ports_udp" {
  type    = map
  default = {
    100   = 53
  }
}
variable "ports_tcp" {
  type    = map
  default = {
    100   = "22"
    101   = "80"
    102   = "443"
    103   = "8080"
    104   = "8082"
    105   = "81"
  }
}
variable "allowed_ips" {
  type = map
  default = {
    ip1 = "166.70.92.176/32"
    ip2 = "172.10.163.251"
    ip3 = "99.109.51.251"
  }
}
