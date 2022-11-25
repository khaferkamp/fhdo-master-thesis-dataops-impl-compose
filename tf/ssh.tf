data "digitalocean_ssh_key" "terraform" {
  name = "id_ed25519_do_terraform"
}

data "digitalocean_ssh_key" "default-do" {
  name = "id_rsa_digitalocean"
}