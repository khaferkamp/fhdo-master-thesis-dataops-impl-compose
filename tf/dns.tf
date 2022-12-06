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

#use forall instead of individual records...
resource "digitalocean_record" "gitlab" {
  depends_on = [
    digitalocean_domain.default,
    digitalocean_droplet.aio,
  ]

  domain = digitalocean_domain.default.name
  type   = "A"
  ttl    = 1800
  name   = "gitlab"
  value  = digitalocean_droplet.aio.ipv4_address
}

resource "digitalocean_record" "minio" {
  depends_on = [
    digitalocean_domain.default,
    digitalocean_droplet.aio,
  ]

  domain = digitalocean_domain.default.name
  type   = "A"
  ttl    = 1800
  name   = "minio"
  value  = digitalocean_droplet.aio.ipv4_address
}

resource "digitalocean_record" "superset" {
  depends_on = [
    digitalocean_domain.default,
    digitalocean_droplet.aio,
  ]

  domain = digitalocean_domain.default.name
  type   = "A"
  ttl    = 1800
  name   = "superset"
  value  = digitalocean_droplet.aio.ipv4_address
}

resource "digitalocean_record" "trino" {
  depends_on = [
    digitalocean_domain.default,
    digitalocean_droplet.aio,
  ]

  domain = digitalocean_domain.default.name
  type   = "A"
  ttl    = 1800
  name   = "trino"
  value  = digitalocean_droplet.aio.ipv4_address
}

resource "digitalocean_record" "datahub" {
  depends_on = [
    digitalocean_domain.default,
    digitalocean_droplet.aio,
  ]

  domain = digitalocean_domain.default.name
  type   = "A"
  ttl    = 1800
  name   = "datahub"
  value  = digitalocean_droplet.aio.ipv4_address
}