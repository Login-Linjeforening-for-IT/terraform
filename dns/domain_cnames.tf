locals {
  excluded     = [var.logout, var.login]
  domain_names = [for d in module.domeneshop.domain_names : d if contains(local.excluded, d) == false]
}

resource "digitalocean_record" "a_login_records" {
  for_each = digitalocean_domain.all_domains

  domain = each.value.name
  name   = "@"
  type   = "A"
  value  = var.onprem_ip

}