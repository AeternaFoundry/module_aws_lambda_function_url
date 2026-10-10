output "lambda_function_urls_id" {
  description = "Map of id values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_function_urls_authorization_type" {
  description = "Map of authorization_type values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.authorization_type if v.authorization_type != null && length(v.authorization_type) > 0 }
}
output "lambda_function_urls_cors" {
  description = "Map of cors values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => one(v.cors) if v.cors != null && length(v.cors) > 0 }
}
output "lambda_function_urls_function_arn" {
  description = "Map of function_arn values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.function_arn if v.function_arn != null && length(v.function_arn) > 0 }
}
output "lambda_function_urls_function_name" {
  description = "Map of function_name values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_function_urls_function_url" {
  description = "Map of function_url values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.function_url if v.function_url != null && length(v.function_url) > 0 }
}
output "lambda_function_urls_invoke_mode" {
  description = "Map of invoke_mode values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.invoke_mode if v.invoke_mode != null && length(v.invoke_mode) > 0 }
}
output "lambda_function_urls_qualifier" {
  description = "Map of qualifier values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.qualifier if v.qualifier != null && length(v.qualifier) > 0 }
}
output "lambda_function_urls_region" {
  description = "Map of region values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_function_urls_url_id" {
  description = "Map of url_id values across all lambda_function_urls, keyed the same as var.lambda_function_urls"
  value       = { for k, v in aws_lambda_function_url.lambda_function_urls : k => v.url_id if v.url_id != null && length(v.url_id) > 0 }
}

