resource "digitalocean_record" "google_verify_forms" {
  domain = var.login
  type   = "TXT"
  name   = "forms"
  value  = "google-site-verification=ryrYCeqvEF5EDnpjioRq1DIyY6PByK-LbtkFwcI7m-c"
}

resource "digitalocean_record" "google_verify" {
  domain = var.login
  type   = "TXT"
  name   = "@"
  value  = "google-site-verification=WDHZtpjiTEsnySmCP-lQUQibvV7pFbHcIC4cG_gWUxU"
}