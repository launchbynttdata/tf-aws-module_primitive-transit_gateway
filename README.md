# tf-aws-module_primitive-transit_gateway
This repository contains a Terraform module for creating and managing an AWS EC2 Transit Gateway.
The module provides configurable options for various Transit Gateway settings, including route table associations, route table propagations, and support for multicast, VPN ECMP, and DNS.
It also includes outputs for key Transit Gateway attributes such as ID, ARN, and owner ID.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.78.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.transit_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the EC2 Transit Gateway | `string` | `null` | no |
| <a name="input_amazon_side_asn"></a> [amazon\_side\_asn](#input\_amazon\_side\_asn) | The Autonomous System Number (ASN) for the Amazon side of the gateway. By default the TGW is created with the current default Amazon ASN. | `string` | `"64512"` | no |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Whether resource attachments are automatically associated with the default association route table | `bool` | `true` | no |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Whether resource attachments automatically propagate routes to the default propagation route table | `bool` | `true` | no |
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | Whether resource attachment requests are automatically accepted | `bool` | `false` | no |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | Whether VPN Equal Cost Multipath Protocol support is enabled | `bool` | `true` | no |
| <a name="input_multicast_support"></a> [multicast\_support](#input\_multicast\_support) | Whether multicast support is enabled | `bool` | `false` | no |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Should be true to enable DNS support in the TGW | `bool` | `true` | no |
| <a name="input_transit_gateway_cidr_blocks"></a> [transit\_gateway\_cidr\_blocks](#input\_transit\_gateway\_cidr\_blocks) | One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6 | `list(string)` | `[]` | no |
| <a name="input_security_group_referencing_support"></a> [security\_group\_referencing\_support](#input\_security\_group\_referencing\_support) | Whether the TGW supports security group references in this Region | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_transit_gateway_id"></a> [ec2\_transit\_gateway\_id](#output\_ec2\_transit\_gateway\_id) | The ID of the EC2 Transit Gateway |
| <a name="output_ec2_transit_gateway_arn"></a> [ec2\_transit\_gateway\_arn](#output\_ec2\_transit\_gateway\_arn) | The ARN of the EC2 Transit Gateway |
| <a name="output_association_default_route_table_id"></a> [association\_default\_route\_table\_id](#output\_association\_default\_route\_table\_id) | The ID of the default association route table |
| <a name="output_propagation_default_route_table_id"></a> [propagation\_default\_route\_table\_id](#output\_propagation\_default\_route\_table\_id) | The ID of the default propagation route table |
| <a name="output_ec2_transit_gateway_owner_id"></a> [ec2\_transit\_gateway\_owner\_id](#output\_ec2\_transit\_gateway\_owner\_id) | The ID of the AWS account that owns the EC2 Transit Gateway |
<!-- END_TF_DOCS -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.78.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.transit_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the EC2 Transit Gateway | `string` | `null` | no |
| <a name="input_amazon_side_asn"></a> [amazon\_side\_asn](#input\_amazon\_side\_asn) | The Autonomous System Number (ASN) for the Amazon side of the gateway. By default the TGW is created with the current default Amazon ASN. | `string` | `"64512"` | no |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Whether resource attachments are automatically associated with the default association route table | `bool` | `true` | no |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Whether resource attachments automatically propagate routes to the default propagation route table | `bool` | `true` | no |
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | Whether resource attachment requests are automatically accepted | `bool` | `false` | no |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | Whether VPN Equal Cost Multipath Protocol support is enabled | `bool` | `true` | no |
| <a name="input_multicast_support"></a> [multicast\_support](#input\_multicast\_support) | Whether multicast support is enabled | `bool` | `false` | no |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Should be true to enable DNS support in the TGW | `bool` | `true` | no |
| <a name="input_transit_gateway_cidr_blocks"></a> [transit\_gateway\_cidr\_blocks](#input\_transit\_gateway\_cidr\_blocks) | One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6 | `list(string)` | `[]` | no |
| <a name="input_security_group_referencing_support"></a> [security\_group\_referencing\_support](#input\_security\_group\_referencing\_support) | Whether the TGW supports security group references in this Region | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_transit_gateway_id"></a> [ec2\_transit\_gateway\_id](#output\_ec2\_transit\_gateway\_id) | The ID of the EC2 Transit Gateway |
| <a name="output_ec2_transit_gateway_arn"></a> [ec2\_transit\_gateway\_arn](#output\_ec2\_transit\_gateway\_arn) | The ARN of the EC2 Transit Gateway |
| <a name="output_association_default_route_table_id"></a> [association\_default\_route\_table\_id](#output\_association\_default\_route\_table\_id) | The ID of the default association route table |
| <a name="output_propagation_default_route_table_id"></a> [propagation\_default\_route\_table\_id](#output\_propagation\_default\_route\_table\_id) | The ID of the default propagation route table |
| <a name="output_ec2_transit_gateway_owner_id"></a> [ec2\_transit\_gateway\_owner\_id](#output\_ec2\_transit\_gateway\_owner\_id) | The ID of the AWS account that owns the EC2 Transit Gateway |
<!-- END_TF_DOCS -->
