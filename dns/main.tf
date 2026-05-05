

// Register all domains in Digitalocean
resource "digitalocean_domain" "all_domains" {
  for_each = toset(module.domeneshop.domain_names)
  name     = each.value

}

resource "digitalocean_record" "cdn_cname" {
  domain = var.login
  type   = "CNAME"
  name   = "cdn"
  value  = "beehive.ams3.cdn.digitaloceanspaces.com."
}

resource "digitalocean_record" "login_apex_a" {
  domain = var.login
  type   = "A"
  name   = "@"
  ttl    = 300
  value  = var.onprem_ip
}

resource "digitalocean_record" "login_wildcard_a" {
  domain = var.login
  type   = "A"
  name   = "*"
  ttl    = 300
  value  = var.onprem_ip
}

resource "digitalocean_record" "logout_a" {
  domain = var.logout
  type   = "A"
  name   = "@"
  ttl    = 300
  value  = var.onprem_ip
}

resource "digitalocean_record" "vaultwarden_a" {
  domain = var.login
  type   = "A"
  name   = "vault"
  ttl    = 300
  value  = var.ofprem_ip
}

resource "digitalocean_record" "zammad_a" {
  domain = var.login
  type   = "A"
  name   = "zammad"
  ttl    = 300
  value  = var.ofprem_ip
}

resource "digitalocean_record" "offprem_record" {
  domain = var.login
  type   = "A"
  name   = "offprem"
  ttl    = 300
  value  = var.ofprem_ip
}