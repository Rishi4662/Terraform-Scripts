module "app-vpc-network" {
  source = "../Resources/App-VPC"
}

module "db-vpc-network" {
  source = "../Resources/DB-VPC"
}

module "vpc-peering" {
  source         = "../Resources/VPC-Peering"
  first_network  = module.app-vpc-network.app-vpc
  second_network = module.db-vpc-network.db-vpc
}

module "vpc-firewall" {
  source            = "../Resources/VPC-Firewall"
  network           = module.app-vpc-network.app-vpc
  network2          = module.app-vpc-network.app-vpc
  network3          = module.db-vpc-network.db-vpc
  app_network_range = module.app-vpc-network.app-vpc-cidr
}

module "compute_engine" {
  source          = "../Resources/CI"
  firewall_tags   = ["${module.vpc-firewall.firewall_ssh}", "${module.vpc-firewall.firewall_http}"]
  subnetwork_name = module.app-vpc-network.app-subnet-name
}

module "mysql-db" {
  source = "../Resources/SQL"
}