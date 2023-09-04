# ec2-free-tier

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_instance.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami-name"></a> [ami-name](#input\_ami-name) | Name of AMI | `string` | `"al2023-ami-2023.1.20230825.0-kernel-6.1-x86_64"` | no |
| <a name="input_delete-protection"></a> [delete-protection](#input\_delete-protection) | Option to enable Termination Protection | `bool` | `false` | no |
| <a name="input_instance-name"></a> [instance-name](#input\_instance-name) | name of instance | `string` | `null` | no |
| <a name="input_instance-type"></a> [instance-type](#input\_instance-type) | EC2 Instance type | `string` | `"t3.medium"` | no |
| <a name="input_key-pair"></a> [key-pair](#input\_key-pair) | Add Key Pair to access instance | `string` | `null` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Setting up metadata options for instance | `map(string)` | <pre>{<br>  "http-endpoint": "enabled",<br>  "http-put-response-hop-limit": "1",<br>  "http-tokens": "required"<br>}</pre> | no |
| <a name="input_private-ip"></a> [private-ip](#input\_private-ip) | Choose private IP to assign to instance | `string` | `null` | no |
| <a name="input_root-block"></a> [root-block](#input\_root-block) | Setup root block device outside of standard | `map(string)` | <pre>{<br>  "encrypted": "true",<br>  "volume-szie": "20",<br>  "volume-type": "gp3"<br>}</pre> | no |
| <a name="input_security-groups"></a> [security-groups](#input\_security-groups) | List of Security groups to add to ec2 | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to add to your instance | `map(string)` | `{}` | no |
| <a name="input_user-data"></a> [user-data](#input\_user-data) | Add user data to bootstrap instance | `string` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
