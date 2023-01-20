module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.16.0"

  name = "${local.environment}-vpc"
  cidr = "10.1.0.0/16"

   azs             = ["${local.aws_region}a"]
  private_subnets = ["10.1.1.0/24"]
  public_subnets  = ["10.1.101.0/24"]

  enable_dns_hostnames    = true
  enable_nat_gateway      = true
  map_public_ip_on_launch = false
  single_nat_gateway      = true
}
