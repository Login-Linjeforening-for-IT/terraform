terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  backend "s3" {
    region = "eu-north-1"
    bucket = "terraform-login-state"
    key = "digitalocean/terraform.tfstate"
  }
}

