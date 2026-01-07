# Moved blocks to preserve state during resource renames/refactors
# Map old resource addresses to the new consolidated resources in email.tf/email/.

moved {
  from = digitalocean_record.login_mx1
  to   = digitalocean_record.mx_record["login.no-@-mx1.emailsrvr.com.-10"]
}

moved {
  from = digitalocean_record.login_mx2
  to   = digitalocean_record.mx_record["login.no-@-mx2.emailsrvr.com.-20"]
}

moved {
  from = digitalocean_record.login_txt_spf
  to   = digitalocean_record.spf_allow["login.no-@"]
}

moved {
  from = digitalocean_record.login_txt_dkim
  to   = digitalocean_record.dkim_allow["login.no-@"]
}

moved {
  from = digitalocean_record.login_txt_dmarc
  to   = digitalocean_record.dmarc_whitelist["login.no-@"]
}

# Legacy DMARC root records -> consolidated DMARC whitelist
moved {
  from = digitalocean_record.txt_dmarc
  to   = digitalocean_record.dmarc_whitelist["logntnu.no-@"]
}

# Legacy logntnu.no records -> consolidated email resources
moved {
  from = digitalocean_record.mx1
  to   = digitalocean_record.mx_record["logntnu.no-@-mx1.emailsrvr.com.-10"]
}

moved {
  from = digitalocean_record.mx2
  to   = digitalocean_record.mx_record["logntnu.no-@-mx2.emailsrvr.com.-20"]
}

moved {
  from = digitalocean_record.txt_spf
  to   = digitalocean_record.spf_allow["logntnu.no-@"]
}

moved {
  from = digitalocean_record.txt_dkim
  to   = digitalocean_record.dkim_allow["logntnu.no-@"]
}

# Domain creation refactor: move resources from old do_create_domain module
# to new top-level resources. DMARC is intentionally omitted here as it's
# managed separately.

# agni.no
moved {
  from = module.do_create_domain["agni.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["agni.no"]
}
moved {
  from = module.do_create_domain["agni.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["agni.no"]
}
moved {
  from = module.do_create_domain["agni.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["agni.no"]
}
moved {
  from = module.do_create_domain["agni.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["agni.no"]
}

# DMARC
moved {
  from = module.do_create_domain["agni.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["agni.no"]
}

# cyberdagen.net
moved {
  from = module.do_create_domain["cyberdagen.net"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["cyberdagen.net"]
}
moved {
  from = module.do_create_domain["cyberdagen.net"].digitalocean_record.default
  to   = digitalocean_record.a_record["cyberdagen.net"]
}
moved {
  from = module.do_create_domain["cyberdagen.net"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["cyberdagen.net"]
}
moved {
  from = module.do_create_domain["cyberdagen.net"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["cyberdagen.net"]
}

# DMARC
moved {
  from = module.do_create_domain["cyberdagen.net"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["cyberdagen.net"]
}

# cyberdagen.no
moved {
  from = module.do_create_domain["cyberdagen.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["cyberdagen.no"]
}
moved {
  from = module.do_create_domain["cyberdagen.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["cyberdagen.no"]
}
moved {
  from = module.do_create_domain["cyberdagen.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["cyberdagen.no"]
}
moved {
  from = module.do_create_domain["cyberdagen.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["cyberdagen.no"]
}

# DMARC
moved {
  from = module.do_create_domain["cyberdagen.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["cyberdagen.no"]
}

# cyberdagene.net
moved {
  from = module.do_create_domain["cyberdagene.net"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["cyberdagene.net"]
}
moved {
  from = module.do_create_domain["cyberdagene.net"].digitalocean_record.default
  to   = digitalocean_record.a_record["cyberdagene.net"]
}
moved {
  from = module.do_create_domain["cyberdagene.net"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["cyberdagene.net"]
}
moved {
  from = module.do_create_domain["cyberdagene.net"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["cyberdagene.net"]
}

# DMARC
moved {
  from = module.do_create_domain["cyberdagene.net"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["cyberdagene.net"]
}

# cyberdagene.no
moved {
  from = module.do_create_domain["cyberdagene.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["cyberdagene.no"]
}
moved {
  from = module.do_create_domain["cyberdagene.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["cyberdagene.no"]
}
moved {
  from = module.do_create_domain["cyberdagene.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["cyberdagene.no"]
}
moved {
  from = module.do_create_domain["cyberdagene.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["cyberdagene.no"]
}

# DMARC
moved {
  from = module.do_create_domain["cyberdagene.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["cyberdagene.no"]
}

# darlinglinjeforening.no
moved {
  from = module.do_create_domain["darlinglinjeforening.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["darlinglinjeforening.no"]
}
moved {
  from = module.do_create_domain["darlinglinjeforening.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["darlinglinjeforening.no"]
}
moved {
  from = module.do_create_domain["darlinglinjeforening.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["darlinglinjeforening.no"]
}
moved {
  from = module.do_create_domain["darlinglinjeforening.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["darlinglinjeforening.no"]
}

# DMARC
moved {
  from = module.do_create_domain["darlinglinjeforening.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["darlinglinjeforening.no"]
}

# fadderuka.com
moved {
  from = module.do_create_domain["fadderuka.com"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["fadderuka.com"]
}
moved {
  from = module.do_create_domain["fadderuka.com"].digitalocean_record.default
  to   = digitalocean_record.a_record["fadderuka.com"]
}
moved {
  from = module.do_create_domain["fadderuka.com"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["fadderuka.com"]
}
moved {
  from = module.do_create_domain["fadderuka.com"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["fadderuka.com"]
}

# DMARC
moved {
  from = module.do_create_domain["fadderuka.com"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["fadderuka.com"]
}

# fadderuka.org
moved {
  from = module.do_create_domain["fadderuka.org"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["fadderuka.org"]
}
moved {
  from = module.do_create_domain["fadderuka.org"].digitalocean_record.default
  to   = digitalocean_record.a_record["fadderuka.org"]
}
moved {
  from = module.do_create_domain["fadderuka.org"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["fadderuka.org"]
}
moved {
  from = module.do_create_domain["fadderuka.org"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["fadderuka.org"]
}

# DMARC
moved {
  from = module.do_create_domain["fadderuka.org"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["fadderuka.org"]
}

# ingalinjeforeningen.no
moved {
  from = module.do_create_domain["ingalinjeforeningen.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["ingalinjeforeningen.no"]
}
moved {
  from = module.do_create_domain["ingalinjeforeningen.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["ingalinjeforeningen.no"]
}
moved {
  from = module.do_create_domain["ingalinjeforeningen.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["ingalinjeforeningen.no"]
}
moved {
  from = module.do_create_domain["ingalinjeforeningen.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["ingalinjeforeningen.no"]
}

# DMARC
moved {
  from = module.do_create_domain["ingalinjeforeningen.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["ingalinjeforeningen.no"]
}

# karrieredag.no
moved {
  from = module.do_create_domain["karrieredag.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["karrieredag.no"]
}
moved {
  from = module.do_create_domain["karrieredag.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["karrieredag.no"]
}
moved {
  from = module.do_create_domain["karrieredag.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["karrieredag.no"]
}
moved {
  from = module.do_create_domain["karrieredag.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["karrieredag.no"]
}

# DMARC
moved {
  from = module.do_create_domain["karrieredag.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["karrieredag.no"]
}

# linjeforeningen.it
moved {
  from = module.do_create_domain["linjeforeningen.it"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["linjeforeningen.it"]
}
moved {
  from = module.do_create_domain["linjeforeningen.it"].digitalocean_record.default
  to   = digitalocean_record.a_record["linjeforeningen.it"]
}
moved {
  from = module.do_create_domain["linjeforeningen.it"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["linjeforeningen.it"]
}
moved {
  from = module.do_create_domain["linjeforeningen.it"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["linjeforeningen.it"]
}

# DMARC
moved {
  from = module.do_create_domain["linjeforeningen.it"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["linjeforeningen.it"]
}

# lnga.no
moved {
  from = module.do_create_domain["lnga.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["lnga.no"]
}
moved {
  from = module.do_create_domain["lnga.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["lnga.no"]
}
moved {
  from = module.do_create_domain["lnga.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["lnga.no"]
}
moved {
  from = module.do_create_domain["lnga.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["lnga.no"]
}

# DMARC
moved {
  from = module.do_create_domain["lnga.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["lnga.no"]
}

# lngalinjeforening.no
moved {
  from = module.do_create_domain["lngalinjeforening.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["lngalinjeforening.no"]
}
moved {
  from = module.do_create_domain["lngalinjeforening.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["lngalinjeforening.no"]
}
moved {
  from = module.do_create_domain["lngalinjeforening.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["lngalinjeforening.no"]
}
moved {
  from = module.do_create_domain["lngalinjeforening.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["lngalinjeforening.no"]
}

# DMARC
moved {
  from = module.do_create_domain["lngalinjeforening.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["lngalinjeforening.no"]
}

# login-ntnu.no
moved {
  from = module.do_create_domain["login-ntnu.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["login-ntnu.no"]
}
moved {
  from = module.do_create_domain["login-ntnu.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["login-ntnu.no"]
}
moved {
  from = module.do_create_domain["login-ntnu.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["login-ntnu.no"]
}
moved {
  from = module.do_create_domain["login-ntnu.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["login-ntnu.no"]
}

# DMARC
moved {
  from = module.do_create_domain["login-ntnu.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["login-ntnu.no"]
}

# login.coffee
moved {
  from = module.do_create_domain["login.coffee"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["login.coffee"]
}
moved {
  from = module.do_create_domain["login.coffee"].digitalocean_record.default
  to   = digitalocean_record.a_record["login.coffee"]
}
moved {
  from = module.do_create_domain["login.coffee"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["login.coffee"]
}
moved {
  from = module.do_create_domain["login.coffee"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["login.coffee"]
}

# DMARC
moved {
  from = module.do_create_domain["login.coffee"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["login.coffee"]
}

# loginlf.no
moved {
  from = module.do_create_domain["loginlf.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["loginlf.no"]
}
moved {
  from = module.do_create_domain["loginlf.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["loginlf.no"]
}
moved {
  from = module.do_create_domain["loginlf.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["loginlf.no"]
}
moved {
  from = module.do_create_domain["loginlf.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["loginlf.no"]
}

# DMARC
moved {
  from = module.do_create_domain["loginlf.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["loginlf.no"]
}

# loginntnu.no
moved {
  from = module.do_create_domain["loginntnu.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["loginntnu.no"]
}
moved {
  from = module.do_create_domain["loginntnu.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["loginntnu.no"]
}
moved {
  from = module.do_create_domain["loginntnu.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["loginntnu.no"]
}
moved {
  from = module.do_create_domain["loginntnu.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["loginntnu.no"]
}

# DMARC
moved {
  from = module.do_create_domain["loginntnu.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["loginntnu.no"]
}

# logintnu.no
moved {
  from = module.do_create_domain["logintnu.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["logintnu.no"]
}
moved {
  from = module.do_create_domain["logintnu.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["logintnu.no"]
}
moved {
  from = module.do_create_domain["logintnu.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["logintnu.no"]
}
moved {
  from = module.do_create_domain["logintnu.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["logintnu.no"]
}

# DMARC
moved {
  from = module.do_create_domain["logintnu.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["logintnu.no"]
}

# logntnu.com
moved {
  from = module.do_create_domain["logntnu.com"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["logntnu.com"]
}
moved {
  from = module.do_create_domain["logntnu.com"].digitalocean_record.default
  to   = digitalocean_record.a_record["logntnu.com"]
}
moved {
  from = module.do_create_domain["logntnu.com"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["logntnu.com"]
}
moved {
  from = module.do_create_domain["logntnu.com"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["logntnu.com"]
}

# DMARC
moved {
  from = module.do_create_domain["logntnu.com"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["logntnu.com"]
}

# ntnulogin.no
moved {
  from = module.do_create_domain["ntnulogin.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["ntnulogin.no"]
}
moved {
  from = module.do_create_domain["ntnulogin.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["ntnulogin.no"]
}
moved {
  from = module.do_create_domain["ntnulogin.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["ntnulogin.no"]
}
moved {
  from = module.do_create_domain["ntnulogin.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["ntnulogin.no"]
}

# DMARC
moved {
  from = module.do_create_domain["ntnulogin.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["ntnulogin.no"]
}

# tekkom.no
moved {
  from = module.do_create_domain["tekkom.no"].digitalocean_domain.example_domains
  to   = digitalocean_domain.domains["tekkom.no"]
}
moved {
  from = module.do_create_domain["tekkom.no"].digitalocean_record.default
  to   = digitalocean_record.a_record["tekkom.no"]
}
moved {
  from = module.do_create_domain["tekkom.no"].digitalocean_record.txt
  to   = digitalocean_record.spf_block["tekkom.no"]
}
moved {
  from = module.do_create_domain["tekkom.no"].digitalocean_record.domainkey
  to   = digitalocean_record.dkim_block["tekkom.no"]
}

# DMARC
moved {
  from = module.do_create_domain["tekkom.no"].digitalocean_record.dmarc
  to   = digitalocean_record.dmarc_blacklist["tekkom.no"]
}
