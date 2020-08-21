# Azure Data Lake Storage 

resource "azurerm_storage_account" "storageaccADLS" {
  name                     =  var.sa-name
  resource_group_name      =  var.lake-resource-group-name
  location                 =  var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true" 

tags = {
 	application-name = var.application-name
 	cost-center = var.cost-center
 	owner = var.owner
 	spm-id = var.spm-id
 	}

}

resource "azurerm_storage_account" "storageacc" {
  name                     =  var.sa-name-archive
  resource_group_name      =  var.lake-resource-group-name
  location                 =  var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "BlobStorage"
  is_hns_enabled           = "false",
  access_tier	           = "Cool" 

tags = {
 	application-name = var.application-name
 	cost-center = var.cost-center
 	owner = var.owner
 	spm-id = var.spm-id
 	}
}


resource "azurerm_data_factory" "adf" {

  name                = var.adf-name-archive
  location            = var.location
  resource_group_name = var.ingest-resource-group-name

tags = {
 	application-name = var.application-name
 	cost-center = var.cost-center
 	owner = var.owner
 	spm-id = var.spm-id
 	}
  
}


resource "azurerm_logic_app_workflow" "logic_app" {

  name                = var.logic-app-name-archive
  location            = var.location
  resource_group_name = var.ingest-resource-group-name

tags = {
 	application-name = var.application-name
 	cost-center = var.cost-center
 	owner = var.owner
 	spm-id = var.spm-id
 	}
}

resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql-server-name
  resource_group_name          = var.ingest-resource-group-name
  location                     = var.location
  version                      = var.version-name 
  administrator_login          = var.admin-login-ss
  administrator_login_password = var.admin-pwd-ss

tags = {
 	application-name = var.application-name
 	cost-center = var.cost-center
 	owner = var.owner
 	spm-id = var.spm-id
 	}

}

// SQL Database

resource "azurerm_sql_database" "sql_database" {
  name                = var.sql-database-name
  resource_group_name = var.ingest-resource-group-name
  location            = var.location
  server_name         = var.sql-server-name
  depends_on = [azurerm_sql_server.sql_server]

tags = {
 	application-name = var.application-name
 	cost-center = var.cost-center
 	owner = var.owner
 	spm-id = var.spm-id
 	}
}

