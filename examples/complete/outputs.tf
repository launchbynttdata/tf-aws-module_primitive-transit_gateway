output "transit_gateway_id" {
  description = "The ID of the Transit Gateway."
  value       = module.transit_gateway.ec2_transit_gateway_id
}

output "transit_gateway_arn" {
  description = "The ARN of the Transit Gateway."
  value       = module.transit_gateway.ec2_transit_gateway_arn
}

output "transit_gateway_owner_id" {
  description = "The owner ID of the Transit Gateway."
  value       = module.transit_gateway.ec2_transit_gateway_owner_id
}

output "default_route_table_association_id" {
  description = "The ID of the default route table association."
  value       = module.transit_gateway.association_default_route_table_id
}

output "default_route_table_propagation_id" {
  description = "The ID of the default route table propagation."
  value       = module.transit_gateway.propagation_default_route_table_id
}
