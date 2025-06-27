terraform {
    required_providers {
        cloudflare = {
            source  = "cloudflare/cloudflare"
            version = "~> 4.0"
        }
    }

    cloud {
        organization = "homelab-mms"
        workspaces {
            name = "dns"
        }
    }
    
}

provider "cloudflare" {
    api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "rpi_homelab_matuzalemmuller_com" {
    zone_id = var.cloudflare_zone_id
    name    = "rpi.homelab"
    content = "192.168.0.20"
    type    = "A"
    ttl     = 3600
}

resource "cloudflare_record" "proxmox_homelab_matuzalemmuller_com" {
    zone_id = var.cloudflare_zone_id
    name    = "proxmox.homelab"
    content = "192.168.0.200"
    type    = "A"
    ttl     = 3600
}

resource "cloudflare_record" "star_k8s_homelab_matuzalemmuller_com" {
    zone_id = var.cloudflare_zone_id
    name    = "*.k8s.homelab"
    content = "192.168.0.60"
    type    = "A"
    ttl     = 3600
}

resource "cloudflare_record" "k8s_homelab_matuzalemmuller_com" {
    zone_id = var.cloudflare_zone_id
    name    = "k8s.homelab"
    content = "192.168.0.30"
    type    = "A"
    ttl     = 3600
}
