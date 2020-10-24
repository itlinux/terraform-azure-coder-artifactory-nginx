resource "null_resource" "jfrog" {
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = tls_private_key.docker_ssh.private_key_pem
      host        = azurerm_linux_virtual_machine.linuxbox.public_ip_address
      agent       = false
    }

    inline = [
      "sudo mkdir -p /jfrog/artifactory",
      "sudo chown -R 1030 /jfrog ",
      "docker run --name artifactory --rm -d -p 8082:8081 -v /jfrog/artifactory:/var/opt/jfrog/artifactory docker.bintray.io/jfrog/artifactory-oss:6.21.0"
    ]
  }
  depends_on = [azurerm_linux_virtual_machine.linuxbox, null_resource.docker_install]
}
