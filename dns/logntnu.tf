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

resource "digitalocean_record" "mx1" {
  domain   = digitalocean_domain.logntnu.name
  type     = "MX"
  name     = "@"
  value    = "mx1.emailsrvr.com."
  priority = 10
}

resource "digitalocean_record" "mx2" {
  domain   = digitalocean_domain.logntnu.name
  type     = "MX"
  name     = "@"
  value    = "mx2.emailsrvr.com."
  priority = 20
}

resource "digitalocean_record" "txt_spf" {
  domain = digitalocean_domain.logntnu.name
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 include:emailsrvr.com ~all"
}

resource "digitalocean_record" "txt_dkim" {
  domain = digitalocean_domain.logntnu.name
  type   = "TXT"
  name   = "20221012-tfsz5nkw._domainkey"
  value  = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDb2zbqNd8ktaADYvbrzNITX1prrfvdP/gezIsIz9ippJvrryhWYlILMRRmENogtcB8zL7ky19FXfkUUWsMRnO7wGaI7b2M7NkWzkX5htsjdxHej6AEBzacrzfPu3e1ly2YFwZn5z+GPt7tHv0oRMq//mDDR9pKyjxhLm19ltoJfQIDAQAB"
}

resource "digitalocean_record" "txt_dmarc" {
  domain = digitalocean_domain.logntnu.name
  type   = "TXT"
  name   = "_dmarc"
  value  = "v=DMARC1; p=quarantine; rua=mailto:tekkom@logntnu.no"
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

