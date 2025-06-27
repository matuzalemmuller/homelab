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
