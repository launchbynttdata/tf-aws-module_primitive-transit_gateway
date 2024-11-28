resource "aws_ec2_transit_gateway" "transit_gateway" {

  description                        = var.description
  amazon_side_asn                    = var.amazon_side_asn
  default_route_table_association    = var.default_route_table_association ? "enable" : "disable"
  default_route_table_propagation    = var.default_route_table_propagation ? "enable" : "disable"
  auto_accept_shared_attachments     = var.auto_accept_shared_attachments ? "enable" : "disable"
  multicast_support                  = var.multicast_support ? "enable" : "disable"
  vpn_ecmp_support                   = var.vpn_ecmp_support ? "enable" : "disable"
  dns_support                        = var.dns_support ? "enable" : "disable"
  transit_gateway_cidr_blocks        = var.transit_gateway_cidr_blocks
  security_group_referencing_support = var.security_group_referencing_support ? "enable" : "disable"
  tags                               = var.tags
}