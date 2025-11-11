// Div domain configuration

# Creates a TXT DNS record for Google site verification on the DigitalOcean domain.
# This record is used to prove ownership of the domain to Google services.
# The record is created at the root level (@) of the domain specified in var.login
# with the Google verification token required for domain verification.
resource "digitalocean_record" "google_verify" {
    domain = var.login
    type   = "TXT"
    name   = "@"
    value  = "google-site-verification=WDHZtpjiTEsnySmCP-lQUQibvV7pFbHcIC4cG_gWUxU"
}