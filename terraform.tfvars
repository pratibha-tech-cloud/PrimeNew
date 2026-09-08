resource_group = {
  rg1 = {
    resourcename = "rg-devops"
    location     = "East US"
  }

  rg2 = {
    resourcename = "rg-test"
    location     = "West US"
  }
  rg3 = {
    resourcename = "rg-prod"
    location     = "West US"
  }
}

vnets = {
  vnet1 = {
    vnetname = "vnet-devops"
    addspc   = ["10.0.0.0/16"]
  }

  vnet2 = {
    vnetname = "vnet-test"
    addspc   = ["10.1.0.0/16"]
  }
}