-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mLMsIP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE crowdfunding_db_schema.Category (
    category_id varchar   NOT NULL,
    category varchar  NOT NULL PRIMARY KEY
);


Select * from crowdfunding_db_schema.category;


Copy crowdfunding_db_schema.category from '"C:\Users\17139\Desktop\Crowdfunding_ETL\Resources\category.csv"' Delimiter ',' csv header; 


CREATE TABLE crowdfunding_db_schema.Subcategory (
    "subcategory_id" varchar   NOT NULL,
    "subcategory_name" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

Select * from crowdfunding_db_schema.Subcategory;


CREATE TABLE crowdfunding_db_schema.Contacts (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

Select * from crowdfunding_db_schema.Contacts;


CREATE TABLE crowdfunding_db_schema.Campaign (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
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
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

SELECT * FROM crowdfunding_db_schema.Campaign;


ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

