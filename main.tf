module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  tags     = var.tags
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
  tags = var.tags
  igw_name = var.igw_name
}

module "public_route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id
  igw_id = module.igw.igw_id
  tags = var.tags
  route_table_name = var.public-route-table 
}


module "public_subnet" {
  source = "./modules/public_subnet"
  vpc_id = module.vpc.vpc_id
  subnet_cidr = var.subnet-cidr
  availability_zone = var.aviability-zone
  subnet_name = var.subnet-Name1
  tags = var.tags
  
}