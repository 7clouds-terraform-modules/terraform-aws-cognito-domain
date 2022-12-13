data "aws_region" "CURRENT_REGION" {}

resource "aws_cognito_user_pool_domain" "this" {
  domain = var.AMAZON_COGNITO_DOMAIN == null ? var.AMAZON_COGNITO_CUSTOM_DOMAIN : var.AMAZON_COGNITO_DOMAIN
  user_pool_id = var.USER_POOL_ID
  certificate_arn = var.CERTIFICATE_ARN
}
