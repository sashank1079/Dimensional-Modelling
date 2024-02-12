/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      DATA MODEL
 *
 * Date Created : Monday, October 23, 2023 23:37:46
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: breed_dimension 
 */

CREATE TABLE breed_dimension(
    Breed_sk             int            NOT NULL,
    PID                  varchar(10)    NULL,
    Date_to_Warehouse    datetime       NULL,
    Species              varchar(4)     NULL,
    Primary_Breed        varchar(46)    NULL,
    Seconday_Breed       varchar(46)    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (Breed_sk)
)

go


IF OBJECT_ID('breed_dimension') IS NOT NULL
    PRINT '<<< CREATED TABLE breed_dimension >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE breed_dimension >>>'
go

/* 
 * TABLE: date_dim 
 */

CREATE TABLE date_dim(
    Date_sk              int             NOT NULL,
    Day_Num              int             NULL,
    Day_Str              varchar(100)    NULL,
    Month_Num            int             NULL,
    Month_Str            varchar(100)    NULL,
    Year_Num             int             NULL,
    is_weekend           varchar(100)    NULL,
    JobID                varchar(100)    NULL,
    dt                   date            NULL,
    Date_to_Warehouse    datetime        NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (Date_sk)
)

go


IF OBJECT_ID('date_dim') IS NOT NULL
    PRINT '<<< CREATED TABLE date_dim >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE date_dim >>>'
go

/* 
 * TABLE: facttable_pet 
 */

CREATE TABLE facttable_pet(
    Breed_sk             int            NOT NULL,
    Location_sk          int            NOT NULL,
    Date_sk              int            NOT NULL,
    Fact_sk              int            NULL,
    noOfPets             int            NULL,
    pid                  varchar(10)    NULL,
    Date_to_Warehouse    datetime       NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (Breed_sk, Location_sk, Date_sk)
)

go


IF OBJECT_ID('facttable_pet') IS NOT NULL
    PRINT '<<< CREATED TABLE facttable_pet >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE facttable_pet >>>'
go

/* 
 * TABLE: location_dim 
 */

CREATE TABLE location_dim(
    Location_sk          int            NOT NULL,
    City                 varchar(50)    NULL,
    Zip                  varchar(10)    NULL,
    State                varchar(2)     NULL,
    Date_to_Warehouse    datetime       NULL,
    JobID                varchar(10)    NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (Location_sk)
)

go


IF OBJECT_ID('location_dim') IS NOT NULL
    PRINT '<<< CREATED TABLE location_dim >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE location_dim >>>'
go

/* 
 * TABLE: facttable_pet 
 */

ALTER TABLE facttable_pet ADD CONSTRAINT Reflocation_dim2 
    FOREIGN KEY (Location_sk)
    REFERENCES location_dim(Location_sk)
go

ALTER TABLE facttable_pet ADD CONSTRAINT Refdate_dim3 
    FOREIGN KEY (Date_sk)
    REFERENCES date_dim(Date_sk)
go

ALTER TABLE facttable_pet ADD CONSTRAINT Refbreed_dimension1 
    FOREIGN KEY (Breed_sk)
    REFERENCES breed_dimension(Breed_sk)
go


