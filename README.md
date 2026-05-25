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
│   ├── 03_queries.sql
│   ├── 04_dashboard_validation_queries.sql
│   └── DewPoint_DataBase.sql
├── Tableau/
│   ├── Dew_Point.twbx
│   └── Dew_Point_Commerce.twbx
└── README.md
```

### How to Run

Run the SQL files in this order in MySQL Workbench (or any MySQL client):

1. `SQL/DewPoint_DataBase.sql` — creates the `dew_point` database and all 10 tables
2. `SQL/02_insert_data.sql` — inserts sample data (10+ rows in every table)
3. `SQL/03_queries.sql` — runs the seven required tasks listed below
4. `SQL/04_dashboard_validation_queries.sql` — validation queries for the Tableau dashboard

If you've already created the database before, run `DROP DATABASE dew_point;` first to start fresh.

### Required Tasks 

1. List the products we currently have in inventory
2. Create a new product
3. Modify the inventory amount of a particular product
4. Delete a product from inventory (soft delete since most products have transactions)
5. Get the most popular products for a given time range
6. Get the least popular products for a given time range
7. Get users who haven't purchased in the last 3 months, plus the products they normally buy

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

### Tools Used

- LucidChart
- MySQL Workbench

### Authors

| Name              | Role(s)                                   | Username         |
|-------------------|-------------------------------------------|------------------|
| Amy Ramsay        | Database Developer, Business Manager      | aramsay1026      |
| Bea Sauve         | Database Developer, Business Manager      | bunnybea83       |
