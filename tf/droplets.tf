resource "digitalocean_droplet" "aio" {
  graceful_shutdown = true
  monitoring = true 
  name = "aio-dataops-docker-machine"
  image  = "ubuntu-22-04-x64"
  region = var.region
  size   = "g-16vcpu-64gb"

  ssh_keys = [ data.digitalocean_ssh_key.default-do.id, data.digitalocean_ssh_key.terraform.id ]
}