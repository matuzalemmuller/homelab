locals {
    dns_records = [
        {
            name    = "rpi.homelab"
            content = "192.168.0.20"
        },
        {
            name    = "proxmox.homelab"
            content = "192.168.0.200"
        },
        {
            name    = "*.k8s.homelab"
            content = "192.168.0.60"
        },
        {
            name    = "k8s.homelab"
            content = "192.168.0.30"
        },
        {
            name    = "test_github"
            content = "123.123.123.123"
        }
    ]
}

resource "cloudflare_record" "dns_record" {
    for_each = {
        for record in local.dns_records : record.name => record
    }

    zone_id = var.cloudflare_zone_id
    name    = each.value.name
    type    = "A"
    value   = each.value.content
    ttl     = 3600
}
