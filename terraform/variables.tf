variable subscription-id {}

# defaults (override as needed)
variable "owner" {default = "anderson.muse@kroger.com"}
variable "application-name" {default = "DMP"}
variable "cost-center" { default = "9999" }
variable "spm-id" {default = "5839"}
variable "location" {default = "EAST US 2"}

# storage accounts
variable "sa-name" {}
variable "sa-name-archive" {}

# ingest group
variable ingest-resource-group-name {}
variable ingest-owners {}
variable ingest-contributors {}
variable ingest-readers {}
variable ingest-vmadmin-login {}
variable ingest-vmuser-login {}
variable ingest-vm-login {}

# lake group
variable "lake-resource-group-name" {}

#ADF groups
variable "adf-name-archive" {}


#logic App groups
variable logic-app-name-archive {}
