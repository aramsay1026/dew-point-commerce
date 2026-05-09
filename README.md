## Dew Point Commerce

### Overview

This project is a database design for an e-commerce marketplace called **Dew Point Commerce**. The database is designed to manage:
- products
- inventory
- transactions
- shipments
- subscriptions
- customer reviews
- user accounts

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

## Strong and Weak Entities

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

### Supertype
- Product

### Subtypes
- SparklingWater
- MineralWater
- AlkalineWater

The subtype entities inherit common attributes from the `Product` entity but also stores product specific attributes.

### Tools Used

- LucidChart