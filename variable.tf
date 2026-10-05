variable "resource_group" {
  type = map(object({
    resourcename = string
    location     = string
  }))
}
variable "vnets" {
  type = map(object({
    vnetname = string
    #   resourcename = string
    # location = string
    addspc = list(string)
  }))
}

variable "storage_accounts" {
  type = map(object({
    storage_name             = string
    resource_group_key       = string
    account_tier             = string
    account_replication_type = string
  }))
}
