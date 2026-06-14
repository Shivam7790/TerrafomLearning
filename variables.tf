# variable "resource_group_name" {
#   description = "Resource Group Name"
#   type        = string
# }
                          //  these 2 blocks works   1
# variable "location" {
#   description = "Azure Region"
#   type        = string
# }

variable "rgs"{

  type=map(any)
}
