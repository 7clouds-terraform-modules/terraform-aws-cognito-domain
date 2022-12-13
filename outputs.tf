output "DOMAIN" {
  value = aws_cognito_user_pool_domain.this.domain
}

output "DOMAIN_ID" {
  value = aws_cognito_user_pool_domain.this.id
}

output "AMAZON_COGNITO_DOMAIN_AUTH_URL" {
  description = "Cognito's Domain URL plus '/login' for usage as Postman testing for example. Not appropriate for custom domains"
  value       = var.AMAZON_COGNITO_CUSTOM_DOMAIN != null ? null : "https://${var.AMAZON_COGNITO_DOMAIN}.auth.${data.aws_region.CURRENT_REGION.name}.amazoncognito.com/login"

}

output "S3_BUCKET" {
  value = aws_cognito_user_pool_domain.this.s3_bucket == null ? null : aws_cognito_user_pool_domain.this.s3_bucket
}

output "VERSION" {
  value = aws_cognito_user_pool_domain.this.version
}

output "CLOUDFRONT_DISTRIBUTION_ARN" {
  description = "Cloudfront distribution arn for using as reference in 'aws_route53_record' when using custom domain"
  value       = aws_cognito_user_pool_domain.this.cloudfront_distribution_arn == null ? null : aws_cognito_user_pool_domain.this.cloudfront_distribution_arn
}
