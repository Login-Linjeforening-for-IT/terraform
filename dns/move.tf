// State moves for domains: migrate from old addresses to new for_each keys

// Old index-based module instances -> new key-based instances
moved {
  from = module.do_create_domain[0].digitalocean_domain.example_domains
  to   = module.do_create_domain["cyberdagen.net"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[1].digitalocean_domain.example_domains
  to   = module.do_create_domain["cyberdagen.no"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[2].digitalocean_domain.example_domains
  to   = module.do_create_domain["cyberdagene.net"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[3].digitalocean_domain.example_domains
  to   = module.do_create_domain["cyberdagene.no"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[4].digitalocean_domain.example_domains
  to   = module.do_create_domain["fadderuka.com"].digitalocean_domain.example_domains
}

// [5] was fadderuka.net (not in new set) — intentionally not moved

moved {
  from = module.do_create_domain[6].digitalocean_domain.example_domains
  to   = module.do_create_domain["fadderuka.org"].digitalocean_domain.example_domains
}

// [7] was higlog.no (not in new set) — intentionally not moved

moved {
  from = module.do_create_domain[8].digitalocean_domain.example_domains
  to   = module.do_create_domain["karrieredag.no"].digitalocean_domain.example_domains
}

// [9] karrieredagen.it and [10] karrieredagene.it are not in new set — not moved

moved {
  from = module.do_create_domain[11].digitalocean_domain.example_domains
  to   = module.do_create_domain["linjeforeningen.it"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[12].digitalocean_domain.example_domains
  to   = module.do_create_domain["login-ntnu.no"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[13].digitalocean_domain.example_domains
  to   = module.do_create_domain["login.coffee"].digitalocean_domain.example_domains
}

// [14] was loginlf.it (unauthorized/not in new set) — intentionally not moved

moved {
  from = module.do_create_domain[15].digitalocean_domain.example_domains
  to   = module.do_create_domain["loginlf.no"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[16].digitalocean_domain.example_domains
  to   = module.do_create_domain["loginntnu.no"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[17].digitalocean_domain.example_domains
  to   = module.do_create_domain["logintnu.no"].digitalocean_domain.example_domains
}

moved {
  from = module.do_create_domain[19].digitalocean_domain.example_domains
  to   = module.do_create_domain["ntnulogin.no"].digitalocean_domain.example_domains
}

// 18 -> logntnu.com (new key-based instance)
moved {
  from = module.do_create_domain[18].digitalocean_domain.example_domains
  to   = module.do_create_domain["logntnu.com"].digitalocean_domain.example_domains
}

// Record-level moves: default A records from legacy root-level for_each to module-managed

moved {
  from = digitalocean_record.default["cyberdagen.net"]
  to   = module.do_create_domain["cyberdagen.net"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["cyberdagen.no"]
  to   = module.do_create_domain["cyberdagen.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["cyberdagene.net"]
  to   = module.do_create_domain["cyberdagene.net"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["cyberdagene.no"]
  to   = module.do_create_domain["cyberdagene.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["fadderuka.com"]
  to   = module.do_create_domain["fadderuka.com"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["fadderuka.org"]
  to   = module.do_create_domain["fadderuka.org"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["karrieredag.no"]
  to   = module.do_create_domain["karrieredag.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["linjeforeningen.it"]
  to   = module.do_create_domain["linjeforeningen.it"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["login-ntnu.no"]
  to   = module.do_create_domain["login-ntnu.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["loginlf.no"]
  to   = module.do_create_domain["loginlf.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["logintnu.no"]
  to   = module.do_create_domain["logintnu.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["logout.no"]
  to   = module.do_create_domain["logout.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["ntnulogin.no"]
  to   = module.do_create_domain["ntnulogin.no"].digitalocean_record.default
}

// Additional moves surfaced by latest plan
moved {
  from = digitalocean_record.default["login.coffee"]
  to   = module.do_create_domain["login.coffee"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["loginntnu.no"]
  to   = module.do_create_domain["loginntnu.no"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["logntnu.com"]
  to   = module.do_create_domain["logntnu.com"].digitalocean_record.default
}

moved {
  from = digitalocean_record.default["logntnu.no"]
  to   = module.do_create_domain["logntnu.no"].digitalocean_record.default
}

// Record-level moves for old module index 18 -> new key "logntnu.com"
moved {
  from = module.do_create_domain[18].digitalocean_record.txt
  to   = module.do_create_domain["logntnu.com"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[18].digitalocean_record.dmarc
  to   = module.do_create_domain["logntnu.com"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[18].digitalocean_record.domainkey
  to   = module.do_create_domain["logntnu.com"].digitalocean_record.domainkey
}
moved {
  from = module.do_create_domain[18].digitalocean_record.default
  to   = module.do_create_domain["logntnu.com"].digitalocean_record.default
}
// Record-level moves from old module indices -> new key-based instances (TXT, DMARC, DomainKey)

// 0 -> cyberdagen.net
moved {
  from = module.do_create_domain[0].digitalocean_record.txt
  to   = module.do_create_domain["cyberdagen.net"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[0].digitalocean_record.dmarc
  to   = module.do_create_domain["cyberdagen.net"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[0].digitalocean_record.domainkey
  to   = module.do_create_domain["cyberdagen.net"].digitalocean_record.domainkey
}

// 1 -> cyberdagen.no
moved {
  from = module.do_create_domain[1].digitalocean_record.txt
  to   = module.do_create_domain["cyberdagen.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[1].digitalocean_record.dmarc
  to   = module.do_create_domain["cyberdagen.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[1].digitalocean_record.domainkey
  to   = module.do_create_domain["cyberdagen.no"].digitalocean_record.domainkey
}

// 2 -> cyberdagene.net
moved {
  from = module.do_create_domain[2].digitalocean_record.txt
  to   = module.do_create_domain["cyberdagene.net"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[2].digitalocean_record.dmarc
  to   = module.do_create_domain["cyberdagene.net"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[2].digitalocean_record.domainkey
  to   = module.do_create_domain["cyberdagene.net"].digitalocean_record.domainkey
}

// 3 -> cyberdagene.no
moved {
  from = module.do_create_domain[3].digitalocean_record.txt
  to   = module.do_create_domain["cyberdagene.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[3].digitalocean_record.dmarc
  to   = module.do_create_domain["cyberdagene.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[3].digitalocean_record.domainkey
  to   = module.do_create_domain["cyberdagene.no"].digitalocean_record.domainkey
}

// 4 -> fadderuka.com
moved {
  from = module.do_create_domain[4].digitalocean_record.txt
  to   = module.do_create_domain["fadderuka.com"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[4].digitalocean_record.dmarc
  to   = module.do_create_domain["fadderuka.com"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[4].digitalocean_record.domainkey
  to   = module.do_create_domain["fadderuka.com"].digitalocean_record.domainkey
}

// [5] fadderuka.net — intentionally not moved (not in new set)

// 6 -> fadderuka.org
moved {
  from = module.do_create_domain[6].digitalocean_record.txt
  to   = module.do_create_domain["fadderuka.org"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[6].digitalocean_record.dmarc
  to   = module.do_create_domain["fadderuka.org"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[6].digitalocean_record.domainkey
  to   = module.do_create_domain["fadderuka.org"].digitalocean_record.domainkey
}

// [7] higlog.no — intentionally not moved (not in new set)

// 8 -> karrieredag.no
moved {
  from = module.do_create_domain[8].digitalocean_record.txt
  to   = module.do_create_domain["karrieredag.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[8].digitalocean_record.dmarc
  to   = module.do_create_domain["karrieredag.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[8].digitalocean_record.domainkey
  to   = module.do_create_domain["karrieredag.no"].digitalocean_record.domainkey
}

// [9] karrieredagen.it — intentionally not moved (not in new set)
// [10] karrieredagene.it — intentionally not moved (not in new set)

// 11 -> linjeforeningen.it
moved {
  from = module.do_create_domain[11].digitalocean_record.txt
  to   = module.do_create_domain["linjeforeningen.it"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[11].digitalocean_record.dmarc
  to   = module.do_create_domain["linjeforeningen.it"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[11].digitalocean_record.domainkey
  to   = module.do_create_domain["linjeforeningen.it"].digitalocean_record.domainkey
}

// 12 -> login-ntnu.no
moved {
  from = module.do_create_domain[12].digitalocean_record.txt
  to   = module.do_create_domain["login-ntnu.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[12].digitalocean_record.dmarc
  to   = module.do_create_domain["login-ntnu.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[12].digitalocean_record.domainkey
  to   = module.do_create_domain["login-ntnu.no"].digitalocean_record.domainkey
}

// 13 -> login.coffee
moved {
  from = module.do_create_domain[13].digitalocean_record.txt
  to   = module.do_create_domain["login.coffee"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[13].digitalocean_record.dmarc
  to   = module.do_create_domain["login.coffee"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[13].digitalocean_record.domainkey
  to   = module.do_create_domain["login.coffee"].digitalocean_record.domainkey
}

// [14] loginlf.it — intentionally not moved (unauthorized/not in new set)

// 15 -> loginlf.no
moved {
  from = module.do_create_domain[15].digitalocean_record.txt
  to   = module.do_create_domain["loginlf.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[15].digitalocean_record.dmarc
  to   = module.do_create_domain["loginlf.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[15].digitalocean_record.domainkey
  to   = module.do_create_domain["loginlf.no"].digitalocean_record.domainkey
}

// 16 -> loginntnu.no
moved {
  from = module.do_create_domain[16].digitalocean_record.txt
  to   = module.do_create_domain["loginntnu.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[16].digitalocean_record.dmarc
  to   = module.do_create_domain["loginntnu.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[16].digitalocean_record.domainkey
  to   = module.do_create_domain["loginntnu.no"].digitalocean_record.domainkey
}

// 17 -> logintnu.no
moved {
  from = module.do_create_domain[17].digitalocean_record.txt
  to   = module.do_create_domain["logintnu.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[17].digitalocean_record.dmarc
  to   = module.do_create_domain["logintnu.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[17].digitalocean_record.domainkey
  to   = module.do_create_domain["logintnu.no"].digitalocean_record.domainkey
}

// 19 -> ntnulogin.no
moved {
  from = module.do_create_domain[19].digitalocean_record.txt
  to   = module.do_create_domain["ntnulogin.no"].digitalocean_record.txt
}
moved {
  from = module.do_create_domain[19].digitalocean_record.dmarc
  to   = module.do_create_domain["ntnulogin.no"].digitalocean_record.dmarc
}
moved {
  from = module.do_create_domain[19].digitalocean_record.domainkey
  to   = module.do_create_domain["ntnulogin.no"].digitalocean_record.domainkey
}

