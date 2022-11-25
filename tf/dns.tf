resource "digitalocean_domain" "default" {
  name = "aio.dataops.${var.domain}"
}