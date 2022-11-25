resource "digitalocean_domain" "default" {
  name = "aio.dataops.${var.domain}"
}

resource "digitalocean_record" "aio_root" {
  depends_on = [
    digitalocean_domain.default,
    digitalocean_droplet.aio,
  ]

  domain = digitalocean_domain.default.name
  type   = "A"
  ttl    = 1800
  name   = "@"
  value  = digitalocean_droplet.aio.ipv4_address
}