# only with reverse proxy
# resource "digitalocean_firewall" "aio" {
#   name = "only-22-80-and-443"

#   droplet_ids = [digitalocean_droplet.aio.id]

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "22"
#     source_addresses = ["192.168.1.0/24", "2002:1:2::/48"]
#   }

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "80"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "443"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   inbound_rule {
#     protocol         = "icmp"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   outbound_rule {
#     protocol              = "tcp"
#     port_range            = "53"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   outbound_rule {
#     protocol              = "udp"
#     port_range            = "53"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }

#   outbound_rule {
#     protocol              = "icmp"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }
# }