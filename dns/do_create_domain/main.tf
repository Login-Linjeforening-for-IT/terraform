variable "domain_name" {
  type        = string
  description = "domain name"
}

resource "digitalocean_domain" "example_domains" {
  name = var.domain_name
}

resource "digitalocean_record" "txt" {
  domain     = var.domain_name
  type       = "TXT"
  name       = "@"
  value      = "v=spf1 -all"
  depends_on = [digitalocean_domain.example_domains]
}

resource "digitalocean_record" "dmarc" {
  domain     = var.domain_name
  name       = "_dmarc"
  type       = "TXT"
  value      = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:tekkom.login@gmail.com"
  depends_on = [digitalocean_domain.example_domains]
}

resource "digitalocean_record" "domainkey" {
  domain     = var.domain_name
  name       = "*._domainkey"
  type       = "TXT"
  value      = "v=DKIM1; p="
  depends_on = [digitalocean_domain.example_domains]
}

resource "digitalocean_record" "default" {
  name     = "@"
  value    = "209.38.52.30"
  type     = "A"
  domain   = var.domain_name
}
