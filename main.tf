data "cloudflare_account_token" "account_token_lookup" {
  for_each = var.account_token_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  token_id   = each.value.token_id
}

