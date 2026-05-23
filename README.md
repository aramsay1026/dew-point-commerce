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
│   ├── DewPoint_Delivery_ERD_Boyce_Codd_NF (1).jpeg  # Normalized ER diagram (BCNF)
│   ├── DewPoint_Delivery_ERD.vsdx                    # Editable ERD source file
│   ├── DewPoint_Delivery_Relationship_Diagram.jpeg   # Relationship diagram
│   ├── DewPoint_Delivery_Relationship_Diagram.vsdx   # Editable relationship diagram source
│   └── Images/
│       └── DewPointLogo.png                          # Company logo
├── CSV_files/
│   ├── alkaline_water.csv                            # Database Table of alkaline water products
│   ├── mineral_water.csv                             # Database Table of mineral water products
│   ├── sparkling_water.csv                           # Database Table of sparkling water products
│   ├── product_review.csv                            # Database Table of customer reviews
│   ├── product.csv                                   # Database Table of all products
│   ├── shipment.csv                                  # Database Table of all shipments to customers
│   ├── subscription.csv                              # Database Table of all customer subscriptions
│   ├── supplier.csv                                  # Database Table of all business suppliers
│   ├── transaction.csv                               # Database Table of all customer transactions
│   └── user.csv                                      # Database Table of all users
│
├── DewPoint_DataBase.sql      # Creates the database and all tables
├── Dew_Point_Commerce.twbx    # Tableau workbook of database visualizations
├── 02_insert_data.sql         # Loads sample data into every table
├── 03_queries.sql             # The 7 required task queries
└── README.md                  # This file
```

### How to Run

Run the SQL files in this order in MySQL Workbench (or any MySQL client):

1. `DewPoint_DataBase.sql` — creates the `dew_point` database and all 10 tables
2. `02_insert_data.sql` — inserts sample data (10+ rows in every table)
3. `03_queries.sql` — runs the seven required tasks listed below

If you've already created the database before, run `DROP DATABASE dew_point;` first to start fresh.

### Required Tasks (in `03_queries.sql`)

1. List the products we currently have in inventory
2. Create a new product
3. Modify the inventory amount of a particular product
4. Delete a product from inventory (soft delete since most products have transactions)
5. Get the most popular products for a given time range
6. Get the least popular products for a given time range
7. Get users who haven't purchased in the last 3 months, plus the products they normally buy

### Normalization

The schema is in **Boyce-Codd Normal Form**. A few notes on the changes we made during normalization:

- `product_review` no longer stores `productID` directly — the product is reachable through the `transactionID` it references, so storing it again would be a transitive dependency.
- `transaction` uses `userID` (instead of a separate `customerID`) so it points at the `user` table consistently.
- `subscription.end_date` is no longer auto-generated from `start_date` and `duration`, since that creates a functional dependency between non-key attributes.

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

### Strong and Weak Entities

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

### Supertype and Subtype Relationship

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
