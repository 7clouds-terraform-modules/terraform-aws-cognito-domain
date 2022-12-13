module "cognito_domain" {
  source                = "../.."
  USER_POOL_ID          = "valid_user_pool_id"
  AMAZON_COGNITO_DOMAIN = "example"
}
