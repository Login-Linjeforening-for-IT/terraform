resource "digitalocean_domain" "logntnu" {
  name = "logntnu.no"
}

resource "digitalocean_record" "discord" {
  domain = digitalocean_domain.logntnu.name
  type   = "CNAME"
  name   = "discord"
  value  = "discord.login.no."
}

resource "digitalocean_record" "autodiscover" {
  domain = digitalocean_domain.logntnu.name
  type   = "CNAME"
  name   = "autodiscover"
  value  = "autodiscover.emailsrvr.com."
}

resource "digitalocean_record" "txt_git_spf" {
  domain = digitalocean_domain.logntnu.name
  type   = "TXT"
  name   = "git"
  value  = "v=spf1 include:emailsrvr.com ~all"
}

resource "digitalocean_record" "mx_git1" {
  domain   = digitalocean_domain.logntnu.name
  type     = "MX"
  name     = "git"
  value    = "mx1.emailsrvr.com."
  priority = 10
}

resource "digitalocean_record" "mx_git2" {
  domain   = digitalocean_domain.logntnu.name
  type     = "MX"
  name     = "git"
  value    = "mx2.emailsrvr.com."
  priority = 20
}

resource "digitalocean_record" "txt_git_dmarc" {
  domain = digitalocean_domain.logntnu.name
  type   = "TXT"
  name   = "_dmarc.git"
  value  = "v=DMARC1; p=quarantine; rua=mailto:tekkom@logntnu.no"
}

