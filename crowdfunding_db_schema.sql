-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mLMsIP
-- CSV FILES IMPORTED VIA MENU OPTIONS


CREATE TABLE crowdfunding_db_schema.Category (
    category_id varchar   NOT NULL PRIMARY KEY,
    category varchar  NOT NULL 
);

Select * from crowdfunding_db_schema.category;

-------------------------------------------------------------------------------
CREATE TABLE crowdfunding_db_schema.Subcategory (
    "subcategory_id" varchar   NOT NULL,
    "subcategory_name" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

Select * from crowdfunding_db_schema.Subcategory;

-------------------------------------------------------------------------------
CREATE TABLE crowdfunding_db_schema.Contacts (
   contact_id SERIAL  NOT NULL  PRIMARY KEY,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    email varchar   NOT NULL 
);

Select * from crowdfunding_db_schema.Contacts;

-------------------------------------------------------------------------------
CREATE TABLE crowdfunding_db_schema.Campaign (
    cf_id int   NOT NULL PRIMARY KEY,
    contact_id SERIAL   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES crowdfunding_db_schema.Contacts(contact_id),
    "company_name" varchar   NOT NULL,
    "description" varchar   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    category_id varchar   NOT NULL,
	FOREIGN KEY (category_id) REFERENCES crowdfunding_db_schema.Category(category_id),
    subcategory_id varchar   NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES crowdfunding_db_schema.Subcategory(subcategory_id)
);

SELECT * FROM crowdfunding_db_schema.Campaign;
















