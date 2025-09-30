module "eks" {
  source  = "spacelift.io/eswar-sudo/eks/default"
  version = "0.1.0"

  # Required inputs
  ami_type           = "AL2023_x86_64_STANDARD"
  capacity_type      = "ON_DEMAND"
  cluster_name       = "dns-alb"
  cluster_version    = "1.33"
  coredns_version    = "v1.11.4-eksbuild.2"
  desired_size       = 2
  disk_size          = 20
  instance_types     = ["t3.xlarge"]
  kube_proxy_version = "v1.32.0-eksbuild.2"
  labels             = {
    nodegroup = "system"
    }
  max_size           = 3
  min_size           = 1
  node_group_name    = "linux-ng"
  private_subnet_ids = ["subnet-064c76d9bfc0f9687", "subnet-06e8ee78284fae47e"]
  region             = "ap-south-1"
  tags               = {
    Environment = "dev"
    Terraform   = "true"
    }
  vpc_cni_version    = "v1.19.6-eksbuild.1"
  vpc_id             = "vpc-0611307ff5503eb69"
}
