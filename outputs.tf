output "ec2_transit_gateway_id" {
  description = "The ID of the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.transit_gateway.id
}

output "ec2_transit_gateway_arn" {
  description = "The ARN of the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.transit_gateway.arn
}

output "ec2_transit_gateway_association_default_route_table_id" {
  description = "The ID of the default association route table"
  value       = aws_ec2_transit_gateway.transit_gateway.association_default_route_table_id
}

output "ec2_transit_gateway_propagation_default_route_table_id" {
  description = "The ID of the default propagation route table"
  value       = aws_ec2_transit_gateway.transit_gateway.propagation_default_route_table_id
}

output "ec2_transit_gateway_owner_id" {
  description = "The ID of the AWS account that owns the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.transit_gateway.owner_id
}