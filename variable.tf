variable "resource_group" {
  type = map(object({
    resourcename = string
    location = string
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