run "nameserver_test" {
  command = plan
  assert {
    condition = alltrue([
      for idx, domain in data.domeneshop_domains.domains.domains : alltrue([
        for i in range(3) : domain.nameservers[i] == "ns${i + 1}.digitalocean.com"
      ])
    ])
    error_message = "Nameservers must be ns1.digitalocean.com, ns2.digitalocean.com, and ns3.digitalocean.com"
  }
}