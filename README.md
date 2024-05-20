# talend-data-integration-project-commercial-data-management
## Objectif 
Creation of a Data Integration System in a Data Warehouse

The project consisted of two distinct parts:

### Part 1: Loading the ODS
In this phase, I set up a PostgreSQL database (COM_INGESTION_DB) and developed SQL scripts for schema creation, table creation, and data insertion. I carefully managed the ingestion process, ensuring seamless integration of flat files into the database using Talend's powerful data integration capabilities. Key tasks included:

- Creating database schemas (VENTE_ODS and PARAMS_LOG).
- Configuring and executing SQL scripts for table creation and data insertion.
- Developing Talend jobs within the ICOMMERCE_REPORTING project for transforming and loading data into the operational data store (ODS).
- Implementing custom Java code for specialized data processing tasks.
### Part 2: Loading the DWH
In this phase, I expanded the PostgreSQL database to include a data warehouse (VENTE_DWH) for advanced analytics and reporting purposes. Similar to Part 1, I developed SQL scripts for schema creation, table creation, and data manipulation. Within the Talend environment (ICOMMERCE_REPORTING), I designed Talend jobs to orchestrate the flow of data into the data warehouse (DWH), ensuring consistency and accuracy. Key tasks included:

- Setting up and executing SQL scripts for creating data warehouse tables and updating existing tables.
- Designing and implementing Talend jobs for data extraction, transformation, and loading (ETL) into the data warehouse.
- Creating specialized Talend jobs (jGenerateCalendar.zip) to populate dimension tables with calendar data.

## data source :
Six CSV files

## ETL process
### Extract
Extracting data from multiple sources (six CSV files)

### Transform 
- Formatting the data as expected
- Removing null data
- Eliminating duplicates
- Checking dependencies
- Verifying existing data

### Load
Loading data into the target database 

## Development

### Part 1:

#### Step 1: Database

- Creation of the database COM_INGESTION_DB
- Creation of the schema ODS_vente_ODS
- Creation of the schema Params_Log
- Creation of the various ODS tables
- Creation of the Context table
- Insertion of data into the Context table
#### Step 2:

Creation of a directory containing the daily data

#### Step 3: Data Integration

- Creation of the Talend project ICOMMERCE_REPORTING
- Creation of context groups
- Configuration of implicit loading of context variables
- Creation of metadata: connection to the database
- Creation of generic schemas
- Creation of various ODS jobs (data transformation and loading)
  ![Job ods sous categorie](assets/SousCategorie.png)

  ![Job ods client](assets/ODS_client.png)

  ![Job ods produit](assets/ODS_Product.png)

  ![Job ods sous categorie](assets/ODS_SousCategorie.png)

  ![Job ods type client](assets/ODS_TypeClient.png)

  ![Job ods vente](assets/ODS_Vente.png)

- Construction and scheduling of the main job execution
![Charge ODS](assets/ChargeOds.png)


### Part 2:
#### Step 1: Database ==> PostgreSQL

- Connection to the database: COM_INGESTION_DB

- Execution of SQL scripts:

1. script_create_schema_dwh.sql:
Creation of the schema VENTE_DWH

2. script_create_table_dwh.sql:
Creation of the various DWH tables

3. script_create_table_ods.sql:
Updating the ODS_VENTE table

4. script_insert_context_variable.sql:
Inserting data into the CONTEXT table

5. script_select_table_dwh.sql:
This script selects the data inserted into the various tables

6. script_truncate_table_dwh.sql
This script deletes the data present in the various DWH tables

#### Step 2: Data Integration Process ==> Talend
1. Opening the Talend project: ICOMMERCE_REPORTING
2. Creating the context group DWH
3. Creating metadata: Connecting to the database
4. Creating the DWH jobs
   ![DWH Client](assets/Dwh_Client.png)
![DWH Product](assets/Dwh_Product.png)
![DWH Vente](assets/Dwh_Vente.png)
![DWH generate calender](assets/GenerateCalender.png)

6. Creating the main job
  ![Job charge DWH](assets/ChargeDWH.png)

### Part 3: Building and scheduling the automatic execution of the main job (Job for populating the Operational Data Store and the Data Warehouse).

![Job charge DWH](assets/ChargeDWH.png)





