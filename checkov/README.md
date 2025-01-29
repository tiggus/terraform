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
| [aws_s3_bucket.checkov-compliant](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket.checkov-non-compliant](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.checkov-non-compliant](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.checkov-non-compliant](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.checkov-non-compliant](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_checkov_acl"></a> [checkov\_acl](#input\_checkov\_acl) | n/a | `string` | `"private"` | no |
| <a name="input_checkov_bucket"></a> [checkov\_bucket](#input\_checkov\_bucket) | the name of the checkov bucket | `string` | `"checkov"` | no |
| <a name="input_checkov_toggle"></a> [checkov\_toggle](#input\_checkov\_toggle) | n/a | `string` | `"false"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->