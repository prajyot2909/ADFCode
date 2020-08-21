CREATE TABLE ArchivalMetadataConfig (
    Dataset_ID int identity(1,1),
    Project_Name varchar(255),
    Absolute_Path varchar(255),
    Partition_Column varchar(100),
    Retention_Period_Days int,
    Schedule_Run varchar(15),
    Active_Flag varchar(1) ,
    Load_Type varchar(15),     
    Created_Date Date,
    Src_Container varchar(100),
    Dest_Container varchar(100)
);  

select * from ArchivalMetadataConfig

insert into dbo.ArchivalMetadataConfig  values ('Tally','dmpdatalake/raw/oracle_financials/code_combination/v1/','log_date','60','Daily','Y','Full',null,'dmpdatalake','archival')
insert into dbo.ArchivalMetadataConfig  values ('Tally','dmpdatalake/raw/oracle_financials/Journal_entry_details/v1/','log-date','60','Daily','Y','Full',null,'dmpdatalake','archival')
insert into dbo.ArchivalMetadataConfig  values ('Tally','dmpdatalake/raw/oracle_financials/journal_entry_header/v1/','log-date','60','Daily','Y','Full',null,'dmpdatalake','archival')
insert into dbo.ArchivalMetadataConfig  values ('Tally','dmpdatalake/raw/oracle_financials/trial_balance/v1/','log-date','60','Daily','Y','Full',null,'dmpdatalake','archival')

insert into dbo.ArchivalMetadataConfig  values ('ReSA','dmpdatalake/raw/rms/code_detail/v1/','log_date','50','Daily','Y','Full',null,'dmpdatalake','archival')
insert into dbo.ArchivalMetadataConfig  values ('ReSA','dmpdatalake/raw/rms/code_head/v1/','log-date','60','Daily','Y','Full',null,'dmpdatalake','archival')
insert into dbo.ArchivalMetadataConfig  values ('ReSA','dmpdatalake/raw/rms/item_master/v1/','log-date','50','Daily','Y','Full',null,'dmpdatalake','archival')
insert into dbo.ArchivalMetadataConfig  values ('ReSA','dmpdatalake/raw/rms/code_head1/v1/','log-date','60','Daily','Y','Full',null,'dmpdatalake','archival')

Select * from ArchivalMetadataConfig

update ArchivalMetadataConfig set Retention_Period_Days=15 where Dataset_ID=1