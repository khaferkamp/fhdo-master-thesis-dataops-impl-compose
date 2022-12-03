resource "digitalocean_droplet" "aio" {
  graceful_shutdown = true
  monitoring        = true
  name              = "aio-dataops-docker-machine"
  image             = "ubuntu-22-04-x64"
  region            = var.region
  size              = var.droplet_aio_size

  ssh_keys = [data.digitalocean_ssh_key.default-do.id, data.digitalocean_ssh_key.terraform.id]
}