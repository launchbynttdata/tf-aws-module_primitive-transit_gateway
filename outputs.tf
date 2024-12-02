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

output "ec2_transit_gateway_id" {
  description = "The ID of the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.transit_gateway.id
}

output "ec2_transit_gateway_arn" {
  description = "The ARN of the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.transit_gateway.arn
}

output "association_default_route_table_id" {
  description = "The ID of the default association route table"
  value       = aws_ec2_transit_gateway.transit_gateway.association_default_route_table_id
}

output "propagation_default_route_table_id" {
  description = "The ID of the default propagation route table"
  value       = aws_ec2_transit_gateway.transit_gateway.propagation_default_route_table_id
}

output "ec2_transit_gateway_owner_id" {
  description = "The ID of the AWS account that owns the EC2 Transit Gateway"
  value       = aws_ec2_transit_gateway.transit_gateway.owner_id
}
