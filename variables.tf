# REQUIRED
variable "AMAZON_COGNITO_DOMAIN" {
  description = "To use if your domain is NOT custom. It will conflict with var.AMAZON_COGNITO_CUSTOM_DOMAIN"
  type        = string
  default     = "my-custom-domain"
}

variable "AMAZON_COGNITO_CUSTOM_DOMAIN" {
  description = "For Custom Domain cases. Declare AMAZON_COGNITO_DOMAIN as null for using it"
  type        = string
  default     = null
}

# variable "USER_POOL_ID" {
#   description = "User pool ID"
#   type        = string
# }

# OPTIONAL
variable "CERTIFICATE_ARN" {
  description = "The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain"
  type        = string
  default     = null
}
