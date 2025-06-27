variable "cloudflare_api_token" {
    description = "Cloudflare API token"
    type        = string
    sensitive   = true
}

variable "cloudflare_zone_id" {
    description = "Cloudflare zone ID"
    type        = string
    default     = "eccfc9ead39233cb2ce6909d8e536772"
}
