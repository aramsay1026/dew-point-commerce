<div align="center">
  <img src="Appendix/Images/DewPointLogo.png" alt="Dew Point Delivery Logo" width="200">
</div>

<h3 align="center">Dew Point Delivery</h3>
<h1 align="center">E-Commerce Project</h1>

---
## Dew Point Commerce

### Overview
---

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
│   ├── Dewpoint_Delivery_ERD.jpg                      # O
│   ├── DewPoint_Delivery_Relationship_Diagram.jpg     # O
│   ├── DewPoint_Delivery_Relationship_Diagram.vsdx    # O
│   ├── Dewpoint_Delivery_ERD.vsdx                     # O
│   └── Images/
│       └── DewPointLogo.png                           # 
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

- User
- Product
- Supplier
- Transaction
- Shipment
- Subscription

### Weak Entities
The following entities are considered weak entities because they depend on another entity:

- Product_Review
- SparklingWater
- MineralWater
- AlkalineWater

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
