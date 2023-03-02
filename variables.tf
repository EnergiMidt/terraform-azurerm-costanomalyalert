variable "environment" {
  description = "(Required) The name of the environment."
  type        = string
  validation {
    condition = contains([
      "dev",
      "test",
      "prod",
    ], var.environment)
    error_message = "Possible values are dev, test, and prod."
  }
}

variable "email_addresses" {
  description = "(Required) Specifies a list of email addresses which the Anomaly Alerts are send to."
  type        = list(string)
}

variable "email_subject" {
  description = "(Optional) The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70."
  type        = string
  default     = null
}

variable "message" {
  description = "(Optional) The message of the Cost Anomaly Alert. Maximum length of the message is 250."
  type        = string
  default     = "This alert contains the daily anomaly by resource group."
}

variable "system_short_name" {
  description = <<EOT
  (Required) Short abbreviation (to-three letters) of the system name that this resource belongs to (see naming convention guidelines).
  Will be part of the final name of the deployed resource.
  EOT
  type        = string
}

variable "app_name" {
  description = <<EOT
  (Required) Name of this resource within the system it belongs to (see naming convention guidelines).
  Will be part of the final name of the deployed resource.
  EOT
  type        = string
}

variable "override_name" {
  description = "(Optional) Override the name of the resource. Under normal circumstances, it should not be used."
  type        = string
  default     = null
}
