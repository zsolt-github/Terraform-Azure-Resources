# https://registry.terraform.io/providers/hashicorp/tls/4.0.4

resource "tls_private_key" "ssh_key-1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}