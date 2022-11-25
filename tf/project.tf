resource "digitalocean_project" "project" {
  name        = var.project
  description = "Thesis prototyp build with docker compose provisioned with terraform"
  purpose     = "Education"
  resources = [
    digitalocean_domain.default.urn,
  ]
}