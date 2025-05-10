output "nat_gateway_ids" {
 value = module.vpc.natgw_ids
}

output "private_subnets" {
  value = module.vpc.public_subnets
}
