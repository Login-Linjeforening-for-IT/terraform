locals {
  excluded     = ["logout.no", var.login]
  domain_names = [for d in module.domeneshop.domain_names : d if contains(local.excluded, d) == false]
}

resource "digitalocean_record" "cname_records" {
  for_each = toset(local.domain_names)

  domain = var.login
  name   = each.value
  type   = "CNAME"
  value  = "${var.login}."

}