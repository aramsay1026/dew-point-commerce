<div align="center">
  <img src="Appendix/Images/DewPointLogo.png" alt="Dew Point Delivery Logo" width="200">
</div>

<h3 align="center">Dew Point Delivery</h3>
<h1 align="center">E-Commerce Project</h1>

### Dew Point Commerce
**Course:** Database Design  
**Project:** E-Commerce Project    
**Team Members:** Amy Ramsay, Bea Sauve   
**Instructor:** Ixius Procopios

### Overview

This project contains the entity-relationship diagram, normalized schema, and SQL implementation for **Dew Point Commerce**, an online marketplace platform. The database tracks:

- products
- inventory
- transactions
- shipments
- subscriptions
- customer reviews
- user accounts

### Repository Structure

```
dew-point-commerce/
├── Appendix/
│   ├── DewPoint_Commerce_Visuals.pdf
│   ├── DewPoint_Delivery_ERD.jpeg
│   ├── DewPoint_Delivery_ERD.vsdx
│   ├── DewPoint_Delivery_ERD_Boyce_Codd_NF.jpeg
│   ├── DewPoint_Delivery_Relationship_Diagram.jpeg
│   ├── DewPoint_Delivery_Relationship_Diagram.vsdx
│   └── Images/
│       └── DewPointLogo.png
├── CSV_files/
│   ├── alkaline_water.csv
│   ├── mineral_water.csv
│   ├── product.csv
│   ├── product_review.csv
│   ├── shipment.csv
│   ├── sparkling_water.csv
│   ├── subscription.csv
│   ├── supplier.csv
│   ├── transaction.csv
│   └── user.csv
├── SQL/
│   ├── 02_insert_data.sql
│   ├── 03_insert_supplier.sql
│   ├── 04_insert_product.sql
│   ├── 05_insert_water_subtypes.sql
│   ├── 06_insert_user.sql
│   ├── 07_insert_subscription.sql
│   ├── 08_insert_transaction.sql
│   ├── 09_insert_shipment.sql
│   ├── 10_insert_review.sql
│   ├── 11_queries.sql
│   └── 12_dashboard_validation_queries.sql
├── Tableau/
│   ├── Dew_Point.twbx
│   └── Dew_Point_Commerce.twbx
└── README.md
```

---

### How to Run

#### *SQL Files*
Run the SQL files in this order in MySQL Workbench (or any MySQL client):

1. `SQL/DewPoint_DataBase.sql` — creates the `dew_point` database and all 10 tables
2. `SQL/02_insert_data.sql` — inserts sample data (10+ rows in every table)
3. `SQL/03_insert_[type].sql` through `SQL/10_insert_[type].sql`  — inserts sample data (100+ rows in every table)
4. `SQL/11_queries.sql` — runs the seven required tasks listed below
5. `SQL/12_dashboard_validation_queries.sql` — validation queries for the Tableau dashboard

If you've already created the database before, run `DROP DATABASE dew_point;` first to start fresh.

#### *Tableau Workbook*
To get an understanding of our company and customer interactions visualizations have been made using a Tableau Public Workbook.
To access the visualizations:
*Tableau Desktop (Public or Regular)*
1. Download [Dew_Point_Commerce.twbx](Dew_Point_Commerce_3.0.twbx) from this database
2. Open the Tableau App
3. Select `file` -> `open` -> navigate to the downloaded file

* Worksheets contain individual visualizations of the database
* Dashboard contains combined worksheets into a cohesive visualization

---

### Required Tasks :

#### Implementation

1. List the products we currently have in inventory
2. Create a new product
3. Modify the inventory amount of a particular product
4. Delete a product from inventory (soft delete since most products have transactions)
5. Get the most popular products for a given time range
6. Get the least popular products for a given time range
7. Get users who haven't purchased in the last 3 months, plus the products they normally buy

Solutions to these queries are answered in the [11_queries.sql](11_queries.sql) file.

#### Dashboard Creation

###### You must create a Tableau workbook with visualizations that answer the following questions:

*Inventory*

What products are currently in inventory, and how many of each?

Which products have low stock levels?

*Sales & Popularity*

- What are the most popular products for a given time range?

- What are the least popular products for a given time range?

*User Behavior*

- Which users haven't made a purchase in the last X months?

- What do those users typically purchase?

*Product Management*

- What are our newest products?

- What categories are performing best?

Visualizations to answer these questions are located in the [Dew_Point_Commerce.twbx](Dea_Point_Commerce.twbx) work book. This file needs Tableau Public or Tableau Desktop to view the file. Details on file operation are located in the [How To Run](#how-to-run) section of this document.

###### SQL queries that validate at least 3 visuals in your workbook.
SQL validations for the visualizations answering these questions can be found in the [12_dashboard_validation_queries.sql](12_dashboard_validation_queries.sql) SQL file. A document comparing the some of the visualizations to the SQL queries can be found in the [Dew_Point_Commerce_Visuals.pdf](Dew_Point_Commerce_Visuals.pdf) file.

--- 

### Entities

The database contains the following entities:

- User
- Product
- Supplier
- Transaction
- Shipment
- Subscription
- Product_Review
- SparklingWater
- MineralWater
- AlkalineWater

### Strong Entities
Strong entities have their own primary keys and don't rely on another table to exist:

- **User** — a customer with an account. PK: `userID`
- **Product** — something we sell. PK: `productID`
- **Transaction** — a purchase a user made. PK: `transactionID`
- **Supplier** — the company that provides a product. PK: `supplierID`

### Weak Entities
Weak entities need another table to make sense:

- **Product_Review** — needs a `User` and a `Transaction` to exist, since you can only review something you bought.
- **Subscription** — belongs to a `User`, doesn't mean anything on its own.
- **Shipment** — tied to a `Transaction`, tracks where the order is going.
- **SparklingWater** — extends `Product` with carbonation info.
- **MineralWater** — extends `Product` with mineral content info.
- **AlkalineWater** — extends `Product` with pH level info.

### Supertype
- Product

### Subtypes
- SparklingWater
- MineralWater
- AlkalineWater

The subtype tables share all the base info from `Product` but each one adds its own type-specific columns.

--- 

### Tools Used

- LucidChart
- MySQL Workbench
- Tableau Public
- VS Code

--- 

### Authors

| Name              | Role(s)                                   | Username         |
|-------------------|-------------------------------------------|------------------|
| Amy Ramsay        | Database Developer, Business Manager      | aramsay1026      |
| Bea Sauve         | Database Developer, Business Manager      | bunnybea83       |

#### Author contributions

##### Amy Ramsay
- README information
- ERD Design
- SQL code for database data insertion - `02_insert_data`
- SQL code to answer [Implementation](#implementation) questions - `11_queries`
- SQL recreations of dashboard visualizations - `12_dashboard_validation_queries`
- Visualizations:
  - Products by Category
  - Newest Arrivals
  - Top 5 and Bottom 5
  - Customer Engagement
  - buying Habits
- Dashboards:
  - Sales & Popularity
  - User Behavior
  - Product Management

##### Bea Sauve
- README information
- ERD Design
- SQL code for database development - `DewPoint_DataBase`
- SQL additional table insertions, generated by AI and cross modified by Bea - `03_insert` through `10_insert`
- SQL recreations of dashboard visualizations - `12_dashboard_validation_queries`
- Database connection to Tableau prep: Data preparation, connection, and extraction to all CSV files
- Visualization Vs SQL comparison pdf - `Dew_Point_Commerce_visuals.pdf`
- Dashboard Formatting
- Visualizations:
  - Inventory Count
  - Flavors
  - Suppliers
- Dashboards:
  - Inventory
