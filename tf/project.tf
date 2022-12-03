resource "digitalocean_project" "project" {
  name        = var.project
  description = "Thesis prototyp build with docker compose provisioned with terraform"
  purpose     = "Education"
  resources = [
    digitalocean_domain.default.urn,
    digitalocean_droplet.aio.urn,
    #digitalocean_container_registry.default.urn,
  ]
}