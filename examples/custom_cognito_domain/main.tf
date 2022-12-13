module "cognito_domain" {
  source                       = "../.."
  USER_POOL_ID                 = "valid_user_pool_id"
  AMAZON_COGNITO_DOMAIN        = null
  AMAZON_COGNITO_CUSTOM_DOMAIN = "example-custom-domain"
  CERTIFICATE_ARN              = "valid_certificate_arn"
}
