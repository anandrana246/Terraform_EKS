module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  tags     = var.tags
}

module "igw" {
  source   = "./modules/igw"
  vpc_id   = module.vpc.vpc_id
  tags     = var.tags
  igw_name = var.igw_name
}

module "public_route_table" {
  source           = "./modules/route_table"
  vpc_id           = module.vpc.vpc_id
  igw_id           = module.igw.igw_id
  tags             = var.tags
  route_table_name = var.public_route_table
}


module "public_subnet" {
  source            = "./modules/public_subnet"
  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.aviability_zone
  subnet_name       = var.subnet_Name1
  tags              = var.tags
}

module "public_rt_association" {
  source         = "./modules/route_table_association"
  subnet_id      = module.public_subnet.subnet_id
  route_table_id = module.public_route_table.route_table_id
}