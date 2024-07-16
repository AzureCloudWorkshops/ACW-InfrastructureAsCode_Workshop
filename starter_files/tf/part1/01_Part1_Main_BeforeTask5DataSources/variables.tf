variable "resourceGroupName" { 
    type = string 
    nullable = false 
} 
variable "storageAccountName" { 
    type = string 
    nullable = false 
    default = "iacstgacct20291231acw" 
} 
variable "location" { 
    type = string 
    nullable = false 
    default = "eastus" 
} 