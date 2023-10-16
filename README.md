# Crowdfunding Data Processing Project - Aaron Bilbow, John Porretta and Praveen K Rachakonda

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Create the Category and Subcategory DataFrames](#create-the-category-and-subcategory-dataframes)
- [Create the Campaign DataFrame](#create-the-campaign-dataframe)
- [Create the Contacts DataFrame](#create-the-contacts-dataframe)
- [Create the Crowdfunding Database](#create-the-crowdfunding-database)
- [Contributing](#contributing)

## Introduction

This project focuses on processing and transforming data from a crowdfunding dataset in Excel format (`crowdfunding.xlsx`). It includes creating DataFrames for categories, subcategories, campaigns, and contacts. Each section below outlines the steps to create the respective DataFrames from the provided Excel data.

## Prerequisites

Before getting started with this project, make sure you have the following prerequisites:

- Python (version 3.6 or higher) https://www.python.org/downloads/
- Pandas library https://pypi.org/project/pandas/#files
- Regex understanding https://www.w3schools.com/python/python_regex.asp
- Basic understanding of data manipulation and Pandas https://pandas.pydata.org/docs/user_guide/10min.html
- Postgres SQL knowledge https://www.postgresql.org/download/

## Create the Category and Subcategory DataFrames

As a first step all the required dependencies were imported. 

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/566c74b4-aea2-46bd-888d-c585a1fbd03d)

We will begin by creating DataFrames for categories and subcategories:

1. Extract and transform data from `crowdfunding.xlsx` to create a "Category DataFrame" that includes:
   - "category_id" with entries like "cat1", "cat2", etc.
   - "category" containing category titles.
2. Export the Category DataFrame as `category.csv` and save it to your GitHub repository.
3. Similarly, create a "Subcategory DataFrame" with:
   - "subcategory_id" following the pattern "subcat1", "subcat2", etc.
   - "subcategory" with subcategory titles.
4. Export the Subcategory DataFrame as `subcategory.csv` and save it to your GitHub repository.

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/902af352-71e1-436a-b529-bc3e41bc82c0)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/a1bfaf08-eb1d-4445-bd4c-8ad9839a69f7)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/62bbf2d5-407e-415c-80c0-98cee4820866)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/dec0c550-87b5-44f0-a82a-d590ba7821f1)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/dfca9c3f-b18d-4fea-b3ea-d34356af8474)

## Create the Campaign DataFrame

Next, we will create a Campaign DataFrame:

1. Extract and transform data from `crowdfunding.xlsx` to create a DataFrame with columns:
   - "cf_id"
   - "contact_id"
   - "company_name"
   - "description" (renamed from "blurb")
   - "goal" (as float)
   - "pledged" (as float)
   - "outcome"
   - "backers_count"
   - "country"
   - "currency"
   - "launch_date" (converted to datetime)
   - "end_date" (converted to datetime)
   - "category_id" (matching "category_id" from Category DataFrame)
   - "subcategory_id" (matching "subcategory_id" from Subcategory DataFrame)

2. Reorder the columns based on the provided order.
3. Export the Campaign DataFrame as `campaign.csv` and save it to your GitHub repository.


![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/a1f2400b-78cb-4e29-8f52-a8c07014e97d)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/43a00903-e4f9-47f5-9069-bb5167e99999)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/ac1060b8-aaee-44d5-abb8-0fa70b726f9d)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/7d0c51ee-f0cf-4505-bd27-4546aa9113e6)

## Create the Contacts DataFrame

## Option 1: Extract and Transform Data Using Python Dictionary Methods

This option involves the following steps:

1. Import the `contacts.xlsx` file into a DataFrame.
2. Iterate through the DataFrame, converting each row to a dictionary.
3. Extract and store the dictionary values for each row.
4. Create a new DataFrame containing the extracted data.
5. Split each "name" column value into first and last names.
6. Clean and export the DataFrame as `contacts.csv`.

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/b9138b2c-0f53-4a15-9c72-021431b8da29)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/af7083da-8bee-4b1c-93b2-ebb1762f3da6)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/516734d9-9040-4f08-a4d4-5cd5238ced18)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/bdbc952c-48b4-4960-a26b-ed0345ae49cd)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/3eac5932-0c62-4052-9ed5-e6fc8c39e7ee)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/fd213b06-a79c-4940-89c3-06fc130b6061)

## Option 2: Extract and Transform Data Using Regular Expressions

This option involves the following steps:

1. Import the `contacts.xlsx` file into a DataFrame.
2. Extract the "contact_id," "name," and "email" columns using regular expressions.
3. Create a new DataFrame with the extracted data.
4. Convert the "contact_id" column to the integer type.
5. Split each "name" column value into "first_name" and "last_name" columns.
6. Clean and export the DataFrame as `contacts_02.csv`.

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/1263b81f-6838-489e-a74e-8f0339c2720c)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/c86b6a7d-1c9a-4c6e-b880-cd5d5f9512a3)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/87951fb4-c86e-43e8-b2be-178c662826fb)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/c7445f21-abe7-4044-a87e-40ee30a60d81)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/ed3d430e-c5fa-4112-b086-d2cb2af7bdae)
![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/3764b857-a9d9-417c-8555-726cf0989411)

## Create the Crowdfunding Database

![Screenshot 2023-10-15 191853](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/e3d9a875-5870-445f-9e22-6c2414e4ba01)

The above image shows the ***Entity Relationship Diagram (ERD)*** for the objects used as part of this assignment. Mainly, ***Many-to-One*** relationship exist between Campaign's ***Contact_id*** with Contact's ***Contact_id***.

### Creation of Tables

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/c76a6959-832d-4041-aad6-9066b84ba463)

As initial step, ***Gr8_Crowdfunding_DB*** database is created 

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/8958a5af-4898-4b9f-8e60-2f70eb88565e)

Code in line 3, makes all the objects (tables) to be dropped/deleted from the database, if they have been created earlier.

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/267bf365-1dd6-4785-a844-8e1f90bf435f)

Lines 8 - 24 create a table/object named "***Campaign***" within *Public Schemas*. The data from csv are import into table using an inbuilt *Postgres Import and Export function* and the imported process is verified by calling "SELECT ALL Function” (Line 27).

Based on ERD schematic, Primary Key is also defined.

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/8b4cb53e-1434-4bae-a164-942b1fa62c1d)

Similar process was implemented for creating remaining tables *Contact* (Lines 30 - 40), *Category* (Lines 43 - 51) and *Subcategory* (Lines 54 - 62).  After creating the Tables/objects, data from csv files were imported into their respective objects/tables using the inbuilt *Import and Export* function of PostgreSQL database.

### Assigning Foreign Key

![image](https://github.com/pkrachakonda/Crowdfunding_ETL/assets/20739237/71b5caf0-3ace-4e2d-acef-fcf1354c730e)

In Lines 65, 67, 69, ***"Campaign"*** table/object was altered using *Alter Table* function of Postgres, in order to assign Foreign keys, based on ERD.


## Contributing

Praveen Kumar Rachakonda, https://github.com/pkrachakonda , 
Aaron Bilbow, https://github.com/aaronbilbow , 
John Poretta, https://github.com/Johnporretta
