variable "domain_name" {
  type        = string
  description = "domain name"
}

variable "lb_ip" {
  type        = string
  description = "IPv4 address for the default A record (@)"
}

resource "digitalocean_domain" "example_domains" {
  name = var.domain_name
}

resource "digitalocean_record" "txt" {
  domain = digitalocean_domain.example_domains.name
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 -all"
}

resource "digitalocean_record" "dmarc" {
  domain = digitalocean_domain.example_domains.name
  name   = "_dmarc"
  type   = "TXT"
  value  = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:tekkom.login@gmail.com"
}

resource "digitalocean_record" "domainkey" {
  domain = digitalocean_domain.example_domains.name
  name   = "*._domainkey"
  type   = "TXT"
  value  = "v=DKIM1; p="
}

resource "digitalocean_record" "default" {
  name   = "@"
  value  = var.lb_ip
  type   = "A"
  domain = digitalocean_domain.example_domains.name
}
