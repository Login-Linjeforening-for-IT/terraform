locals {
  subDomains = [
    "idrac1",
    "idrac2",
    "idrac3",
    "pve1",
    "pve2",
    "truenas"
  ]
}

resource "digitalocean_record" "onprem_mgmt_record" {
  domain = var.login
  name   = "onprem"
  type   = "A"
  value  = "128.39.140.144"
}

resource "digitalocean_record" "onprem_cname_records" {
  for_each = toset(local.subDomains)

  domain = var.login
  name   = each.value
  type   = "CNAME"
  value  = "onprem.${var.login}."
}