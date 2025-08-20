module "vpc-modules" {
  source  = "spacelift.io/eswar-sudo/vpc-modules/default"
  version = "0.1.0"

  # Required inputs
  azs                            = # list(string)
  enable_dns_hostnames           = # bool
  enable_dns_support             = # bool
  map_public_ip_on_launch        = # bool
  private_destination_cidr_block = # string
  public_destination_cidr_block  = # string
  region                         = # string
  single_nat_gateway             = # bool
  vpc_cidr                       = # string
  vpc_name                       = # string
}
