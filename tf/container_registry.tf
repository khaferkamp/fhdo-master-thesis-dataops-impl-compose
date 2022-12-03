resource "digitalocean_container_registry" "default" {
  name                   = "registry-${replace(var.project, "_", "-")}"
  subscription_tier_slug = var.container_registry_tier
  region                 = var.region
}