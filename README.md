<div align="center">
  <img src="Appendix/Images/DewPointLogo.png" alt="Dew Point Delivery Logo" width="200">
</div>

<h3 align="center">Dew Point Delivery</h3>
<h1 align="center">E-Commerce Project</h1>

---
## Dew Point Commerce
---
**Course:** Database Design  
**Project:** E-Commerce Project    
**Team Members:** Amy Ramsay, Bea Sauve   
**Instructor:** Ixius Procopios

---

### Overview
---

This project contains the entity-relationship diagram, normalized schema, and SQL implementation for **Dew Point Commerce**, an online marketplace platform. The database tracks:

- products
- inventory
- transactions
- shipments
- subscriptions
- customer reviews
- user accounts

---

## Repository Structure

```
dew-point-commerce/
├── Appendix/
│   ├── DewPoint_Delivery_ERD.jpeg                    # Normalized ER diagram (BCNF)
│   ├── DewPoint_Delivery_ERD.vsdx                    # Editable ERD source file
│   ├── DewPoint_Delivery_Relationship_Diagram.jpeg   # Relationship diagram
│   ├── DewPoint_Delivery_Relationship_Diagram.vsdx   # Editable relationship diagram source
│   └── Images/
│       └── DewPointLogo.png                          # Company logo
│
├── DewPoint_DataBase.sql      # Creates the database and all tables
├── 02_insert_data.sql         # Loads sample data into every table
├── 03_queries.sql             # The 7 required task queries
└── README.md                  # This file
```

## How to Run

Run the SQL files in this order in MySQL Workbench (or any MySQL client):

1. `DewPoint_DataBase.sql` — creates the `dew_point` database and all 10 tables
2. `02_insert_data.sql` — inserts sample data (10+ rows in every table)
3. `03_queries.sql` — runs the seven required tasks listed below

If you've already created the database before, run `DROP DATABASE dew_point;` first to start fresh.

## Required Tasks (in `03_queries.sql`)

1. List the products we currently have in inventory
2. Create a new product
3. Modify the inventory amount of a particular product
4. Delete a product from inventory (soft delete since most products have transactions)
5. Get the most popular products for a given time range
6. Get the least popular products for a given time range
7. Get users who haven't purchased in the last 3 months, plus the products they normally buy

## Normalization

The schema is in **Boyce-Codd Normal Form**. A few notes on the changes we made during normalization:

- `product_review` no longer stores `productID` directly — the product is reachable through the `transactionID` it references, so storing it again would be a transitive dependency.
- `transaction` uses `userID` (instead of a separate `customerID`) so it points at the `user` table consistently.
- `subscription.end_date` is no longer auto-generated from `start_date` and `duration`, since that creates a functional dependency between non-key attributes.

### Entities
---

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

## Strong and Weak Entities
---

### Strong Entities
The following entities are considered strong entities because they have their own primary keys and can exist independently:

- **User** — Anyone who has registered an account. PK: `user_id`
- **Product** — Any item listed for sale on the platform. PK: `product_id`
- **Transaction** — A completed purchase event. PK: `transaction_id`
- **Supplier** — The provider of company products. PK: `supplier_id`

### Weak Entities
The following entities are considered weak entities because they depend on another entity:

- **Product_Review** — Depends on both `User` and `Transaction`. A review cannot exist without both a reviewer and a transaction being reviewed.
- **Subscription** — Depends on `User`. Indicates duration of users service and specifications of the service provided; has no meaning without the User it refers to.
- **Shipment** — Depends on both `Subscription` and `Transaction`. A Shipment cannot exist without both a subscription and transaction to initiate the shipment.
- **SparklingWater** — Depends on the remaining features lieing within `Product `.
- **MineralWater** — Depends on the remaining features lieing within `Product `.
- **AlkalineWater** — Depends on the remaining features lieing within `Product `.

## Supertype and Subtype Relationship
---

### Supertype
- Product

### Subtypes
- SparklingWater
- MineralWater
- AlkalineWater

The subtype entities inherit common attributes from the `Product` entity but also stores product specific attributes.

### Tools Used
---

- LucidChart
- MySQL Workbench

## Authors

| Name              | Role(s)                                   | Username         |
|-------------------|-------------------------------------------|------------------|
| Amy Ramsay        | Database Developer, Business Manager      | aramsay1026      |
| Bea Sauve         | Database Developer, Business Manager      | bunnybea83       |
