module "app-vpc-network" {
    source              = "../Resources/App-VPC"    
}

module "db-vpc-network" {
    source              = "../Resources/DB-VPC" 
}

module "vpc-peering" {
    source              = "../Resources/VPC-Peering"
    first_network       = module.app-vpc-network.app-vpc
    second_network      = module.db-vpc-network.db-vpc
}