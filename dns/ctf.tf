resource "digitalocean_record" "ctf_a" {
  domain = var.login
  type   = "A"
  name   = "ctf"
  value  = "129.241.150.18"
}

resource "digitalocean_record" "practice_ctf_a" {
  domain = var.login
  type   = "A"
  name   = "practice.ctf"
  value  = "129.241.150.215"
}

resource "digitalocean_record" "rebus_ctf_a" {
  domain = var.login
  type   = "A"
  name   = "rebus"
  value  = "129.241.150.118"
}