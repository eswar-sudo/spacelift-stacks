module "vpc-modules" {
  source  = "spacelift.io/eswar-sudo/vpc-modules/default"
  version = "0.1.0"

  # Required inputs
  azs                            = ["us-east-1a", "us-east-1b"]
  enable_dns_hostnames           = true
  enable_dns_support             = true
  map_public_ip_on_launch        = true
  private_destination_cidr_block = "0.0.0.0/0"
  public_destination_cidr_block  = "0.0.0.0/0"
  region                         = "us-east-1"
  single_nat_gateway             = true
  vpc_cidr                       = "30.0.0.0/16"
  vpc_name                       = "stack-testing"
}
