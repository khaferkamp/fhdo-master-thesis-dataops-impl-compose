terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    time = {
      source = "hashicorp/time"
      version = ">= 0.9.1"
    }
  }
}

variable "do_token" {}
variable "pvt_key" {}

provider "digitalocean" {
  token = var.do_token
}