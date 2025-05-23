module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "hanna-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false
  single_nat_gateway = true
  enable_dns_hostnames = true

  tags = {
    Terraform = "true"
    Environment = "dev"
    Owner = "hanna"
  }
}