output public_ip {
  value = azurerm_linux_virtual_machine.linux_container.public_ip_address
}

output coder_password {
  value = random_password.coder-password.result
}
output "tls_private_key" {
  value = tls_private_key.docker_ssh.private_key_pem
}
