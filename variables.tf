variable "lambda_function_urls" {
  description = <<EOT
Map of lambda_function_urls, attributes below
Required:
    - authorization_type
    - function_name
Optional:
    - invoke_mode
    - qualifier
    - region
    - cors (block):
        - allow_credentials (optional)
        - allow_headers (optional)
        - allow_methods (optional)
        - allow_origins (optional)
        - expose_headers (optional)
        - max_age (optional)
EOT

  type = map(object({
    authorization_type = string
    function_name      = string
    invoke_mode        = optional(string)
    qualifier          = optional(string)
    region             = optional(string)
    cors = optional(object({
      allow_credentials = optional(bool)
      allow_headers     = optional(set(string))
      allow_methods     = optional(set(string))
      allow_origins     = optional(set(string))
      expose_headers    = optional(set(string))
      max_age           = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lambda_function_urls : (
        v.cors == null || (v.cors.max_age == null || (v.cors.max_age <= 86400))
      )
    ])
    error_message = "must be at most 86400"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

