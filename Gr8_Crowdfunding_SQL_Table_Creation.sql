ALTER DATABASE "Gr8_Crowdfunding_DB"
    SET datestyle = 'SQL, MDY'; --- Altering database date-style format to "MDY" from "YMD"
SET datestyle = 'SQL, MDY'; -- Setting date-style to SQL format of MM/DD/YYYY

--- Deleting existing tables, if they exists in Database
DROP TABLE IF EXISTS Campaign, Contacts, Category,Subcategory;

---                                   Creating tables
------------------------------------------------------------------------------------------------------------------------
---Table: "CAMPAIGN" and assigning Primary Key
CREATE TABLE Campaign (
    CF_id int NOT NULL,
    Contact_id int NOT NULL,
    Company_name VARCHAR(100) NOT NULL,
    Description VARCHAR(250) NOT NULL,
    Goal float(6) NOT NULL,
    Pledged float(6) NOT NULL,
    Outcome CHAR (15) NOT NULL,
    Backers_count int NOT NULL,
    Country CHAR(10) NOT NULL,
    Currency CHAR(5) NOT NULL,
    Launch_date DATE NOT NULL,
    End_date DATE,
    Category_id CHAR(5) NOT NULL,
    Subcategory_id CHAR(10) NOT NULL,
    PRIMARY KEY(CF_id)
);
-- Importing data to Campaign Table from "Resources\campaign.csv" using "Import\Export Data" feature of "Postgres - Schemas\Tables"

SELECT * FROM Campaign; --- To verify whether table is imported properly 
-------------------------------------------------------------------------------------------------------------------------
---Table: "CONTACTS" and assigning Primary Key
CREATE TABLE Contacts (
    Contact_id int NOT NULL,
    First_Name VARCHAR(15) NOT NULL,
    Last_Name VARCHAR (20) NOT NULL,
    Email VARCHAR(50) NOT NULL,
	PRIMARY KEY (Contact_id)
);

-- Importing data to Campaign Table from "Resources\contacts.csv" using "Import\Export Data" feature of "Postgres - Schemas\Tables"

SELECT * FROM Contacts; --- To verify whether table is imported properly
-------------------------------------------------------------------------------------------------------------------------
---Table: "CATEGORY" and assigning Primary Key
CREATE TABLE Category (
    Category_id CHAR(5) NOT NULL,
    Category VARCHAR(15) NOT NULL,
	PRIMARY KEY(Category_id)
);

-- Importing data to Campaign Table from "Resources\category.csv" using "Import\Export Data" feature of "Postgres - Schemas\Tables"

SELECT * FROM Category; --- To verify whether table is imported properly
-------------------------------------------------------------------------------------------------------------------------
---Table: "SUBCATEGORY" and assigning Primary Key
CREATE TABLE Subcategory (
    Subcategory_id CHAR(10) NOT NULL,
    Subcategory VARCHAR(20) NOT NULL,
    PRIMARY KEY (Subcategory_id)
);

-- Importing data to Campaign Table from "Resources\subcategory.csv" using "Import\Export Data" feature of "Postgres - Schemas\Tables"

SELECT * FROM subcategory; --- To verify whether table is imported properly
-------------------------------------------------------------------------------------------------------------------------

ALTER TABLE Campaign ADD FOREIGN KEY (Contact_id) REFERENCES Contacts(Contact_id) ON DELETE CASCADE; --- Altering Table in order to assign a "FOREIGN" Key

ALTER TABLE Campaign ADD FOREIGN KEY (Category_id) REFERENCES Category(Category_id) ON DELETE CASCADE; --- Altering Table in order to assign a "FOREIGN" Key

ALTER TABLE Campaign ADD FOREIGN KEY (Subcategory_id) REFERENCES Subcategory(Subcategory_id) ON DELETE CASCADE; --- Altering Table in order to assign a "FOREIGN" Key

