output "vpc_id" {
  description = "The ID of the VPC"
  value       = var.vpc_id
}

output "igw_id" {
  description = "The ID of the Internet Gateway" 
  value       = var.igw_id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"      
  value       = var.public_subnet_ids 
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"     
  value       = var.private_subnet_ids
}

output "nat_gateway_ids" {
  description = "List of NAT Gateway IDs"        
  value       = var.nat_gateway_ids      
}

output "eip_ids" {
  description = "List of EIP IDs"
    value = var.nat.eip_ids
  }

output "public_route_table_ids" {
  description = "List of public RT IDs"
  value = var.public_route_table_ids
}

   output "private_route_table_ids" {
     description = "List of private RT IDs"
     value = var.private_route_table_ids
 }
