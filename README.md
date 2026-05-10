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

This project contains the entity-relationship diagram and supporting documentation for **Dew Point Commerce**, an online marketplace platform. The database tracks users, products, inventory, transactions, and reviews.
This project is a database design for an e-commerce marketplace called **Dew Point Commerce**. The database is designed to manage:
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
Project_3_Analysis_Profit_Forecasting/
├── Appendix/ 
│   ├── Dewpoint_Delivery_ERD.jpg                      # Image of database ERD
│   ├── DewPoint_Delivery_Relationship_Diagram.jpg     # Image of database Relationship ERD
│   ├── DewPoint_Delivery_Relationship_Diagram.vsdx    # Database Relationship ERD Original File
│   ├── Dewpoint_Delivery_ERD.vsdx                     # Database ERD Original File
│   └── Images/
│       └── DewPointLogo.png                           # Company Logo
│
├── 
├── 
└── README.md                                     # Project overview (this file)

```

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

## Authors

| Name              | Role(s)                                   | Username         |
|-------------------|-------------------------------------------|------------------|
| Amy Ramsay        | Database Developer, Business Manager      | aramsay1026      |
| Bea Sauve         | Database Developer, Business Manager      | bunnybea83       |
