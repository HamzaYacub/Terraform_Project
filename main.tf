provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "/home/ubuntu/.aws/credentials"
}

provider "aws" {
  alias = "Paris"
  region                  = "eu-west-3"
  shared_credentials_file = "/home/ubuntu/.aws/credentials"
}

provider "aws" {
  alias = "Mumbai"
  region                  = "ap-south-1"
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

module "asg_mumbai" {
  source = "./Autoscaling_Group_Mumbai"
  providers = {
    aws = aws.Mumbai
  }
}

module "asg_paris" {
  source = "./Autoscaling_Group_Paris"
  providers = {
    aws = aws.Paris
  }
}

module "asg_london" {
  source = "./Autoscaling_Group_London"
}

