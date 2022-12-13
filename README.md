# Cognito Domain Module by 7Clouds

Thank you for riding with us! Feel free to download or reference this respository in your terraform projects and studies

This module is a part of our product SCA — An automated API and Serverless Infrastructure generator that can reduce your API development time by 40-60% and automate your deployments up to 90%! Check it out at <https://seventechnologies.cloud>

Please rank this repo 5 starts if you like our job!

## Usage

The module deploys a cognito domain. There are two options:

* Deploying an Amazon Cognito Domain using the variable 'AMAZON_COGNITO_DOMAIN'

In this case, the code outputs the domain auth url for Postman testing for example

* Deploying a Custom Domain using the variable 'AMAZON_COGNITO_CUSTOM_DOMAIN'

If you are using custom domain, there is no need to output the auth url once it's customized. It will be required to call the variable 'AMAZON_COGNITO_DOMAIN' and setting it's value as null

## Example

```hcl
module "cognito_domain" {
  source                = "./"
  USER_POOL_ID          = "valid_user_pool_id"
  AMAZON_COGNITO_DOMAIN = "example-domain"
}

```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cognito_user_pool_domain.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_domain) | resource |
| [aws_region.CURRENT_REGION](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AMAZON_COGNITO_CUSTOM_DOMAIN"></a> [AMAZON\_COGNITO\_CUSTOM\_DOMAIN](#input\_AMAZON\_COGNITO\_CUSTOM\_DOMAIN) | For Custom Domain cases. Declare AMAZON\_COGNITO\_DOMAIN as null for using it | `string` | `null` | no |
| <a name="input_AMAZON_COGNITO_DOMAIN"></a> [AMAZON\_COGNITO\_DOMAIN](#input\_AMAZON\_COGNITO\_DOMAIN) | To use if your domain is NOT custom. It will conflict with var.AMAZON\_COGNITO\_CUSTOM\_DOMAIN | `string` | n/a | yes |
| <a name="input_CERTIFICATE_ARN"></a> [CERTIFICATE\_ARN](#input\_CERTIFICATE\_ARN) | The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain | `string` | `null` | no |
| <a name="input_USER_POOL_ID"></a> [USER\_POOL\_ID](#input\_USER\_POOL\_ID) | User pool ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_AMAZON_COGNITO_DOMAIN_AUTH_URL"></a> [AMAZON\_COGNITO\_DOMAIN\_AUTH\_URL](#output\_AMAZON\_COGNITO\_DOMAIN\_AUTH\_URL) | Cognito's Domain URL plus '/login' for usage as Postman testing for example. Not appropriate for custom domains |
| <a name="output_CLOUDFRONT_DISTRIBUTION_ARN"></a> [CLOUDFRONT\_DISTRIBUTION\_ARN](#output\_CLOUDFRONT\_DISTRIBUTION\_ARN) | Cloudfront distribution arn for using as reference in 'aws\_route53\_record' when using custom domain |
| <a name="output_DOMAIN"></a> [DOMAIN](#output\_DOMAIN) | n/a |
| <a name="output_DOMAIN_ID"></a> [DOMAIN\_ID](#output\_DOMAIN\_ID) | n/a |
| <a name="output_S3_BUCKET"></a> [S3\_BUCKET](#output\_S3\_BUCKET) | n/a |
| <a name="output_VERSION"></a> [VERSION](#output\_VERSION) | n/a |
<!-- END_TF_DOCS -->