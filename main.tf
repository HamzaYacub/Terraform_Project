provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "/home/ubuntu/.aws/credentials"
}

module "vpc" {
  source = "./VPC"
}

module "igw" {
  source = "./Internet_Gateway"
  vpc_id = module.vpc.vpc_id
}

module "rt" {
  source = "./Route_Table"
  vpc_id = module.vpc.vpc_id
  gw_id = module.igw.gw_id
  sn_id = module.vpc.subnet_id
}

