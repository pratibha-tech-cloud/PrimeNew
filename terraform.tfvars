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
  rg4 = {
    resourcename = "rg-new"
    location     = "West US"
  }
  rg5 = {
    resourcename = "rg-rg5"
    location     = "Central India"
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

storage_accounts = {
  st1 = {
    storage_name             = "stdevopsprime001"
    resource_group_key       = "rg1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
