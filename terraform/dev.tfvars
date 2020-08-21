# ingest Group

ingest-resource-group-name = "rg-DMPEnterpriseDataIngestion-dev-001"

# datalake Group

lake-resource-group-name = "rg-DMPDataLake-Dev-001"

# Data Lake storage Group

sa-name = "dmpadlsarchivedev001"
sa-name-archive = "dmpblobarchivedev"


#SQL server Group
variable "sql-server-name" {default = "dmp-sql-archive-dev-001"}
variable "admin-login-ss" {default = "dmp-sql-server-admin"}
variable "admin-pwd-ss" {default = "Pa$$owrd@123"}

#SQL database Group
variable "sql-database-name" {default = "dmp-sqldb-archive"}


#Data Factory Group
adf-name-archive = "dmp-adf-archive-dev-001"

#logic app Group
logic-app-name-archive = "dmp-lapp-archive-dev-001"
