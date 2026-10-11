variable "account_token_lookup" {
  description = <<EOT
Map of account_token_lookup, attributes below
Optional:
    - account_id
    - filter
    - token_id
EOT

  type = map(object({
    account_id = optional(string)
    filter = optional(object({
      direction       = optional(string)
      include_expired = optional(bool)
    }))
    token_id = optional(string)
  }))
}

