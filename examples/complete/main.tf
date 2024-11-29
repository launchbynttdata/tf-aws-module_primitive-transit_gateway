module "transit_gateway" {
  source = "../.."

  description                     = var.description
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  multicast_support               = var.multicast_support
  vpn_ecmp_support                = var.vpn_ecmp_support
  dns_support                     = var.dns_support
  tags                            = var.tags
}
