module "aks" {

  source = "git::https://github.com/Learn4Ops/simple-terraform-aks-module.git?ref=v1.1"

  location                    = var.location
  environment                 = var.environment
  aks-rg-name                 = var.aks-rg-name
  aks-name                    = var.aks-name
  aks-identity                = var.aks-identity
  aks-default-node-pool-name  = var.aks-default-node-pool-name
  aks-default-node-pool-count = var.aks-default-node-pool-count
  aks-default-node-pool-size  = var.aks-default-node-pool-size
  node_pools                  = var.node_pools


}


module "postgres" {

  source = "git::https://github.com/Learn4Ops/simple-terraform-postgres-module.git?ref=v1.1"

  location                    = var.location
  environment                 = var.environment
  postgres-rg-name            = var.postgres-rg-name
  postgres-name               = var.postgres-name
  user                        = var.user
  password                    = var.password
  postgres-sku                = var.postgres-sku
  postgres-version            = var.postgres-version
  postgres-storage            = var.postgres-storage
  postgres-retention          = var.postgres-retention
  postgres-network-access     = var.postgres-network-access
  postgres-ssl-enfors         = var.postgres-ssl-enfors
  postgres-ssl-enfors-version = var.postgres-ssl-enfors-version




}

module "cr" {

  source = "git::https://github.com/Learn4Ops/simple-terraform-cr-module.git?ref=v1.1"

  location    = var.location
  environment = var.environment
  cr-rg-name  = var.cr-rg-name
  cr-name     = var.cr-name
  cr-sku      = var.cr-sku
  cr-admin    = var.cr-admin


}