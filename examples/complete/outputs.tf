// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
