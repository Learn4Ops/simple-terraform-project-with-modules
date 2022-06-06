environment = "test"

aks-rg-name = "aks-simple-terraform-rg"

aks-name = "test-aks"

node_pools = {
  nodepool1 = {
    name       = "nodepool1"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
  testpool2 = {
    name       = "testpool2"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }
}