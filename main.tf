locals {
  name = var.override_name == null ? "${lower(var.system_short_name)}-${lower(var.app_name)}-${lower(var.environment)}-cost-anomaly-alert" : var.override_name
}

resource "azurerm_cost_anomaly_alert" "cost_anomaly_alert" {
  name            = local.name
  display_name    = local.name
  email_subject   = var.email_subject == null ? "${upper(var.system_short_name)} ${title(var.app_name)} ${title(var.environment)} Cost Anomaly Alert" : var.email_subject
  message         = var.message
  email_addresses = var.email_addresses
}
