-- DewPoint Database: E-Commerce Project
-- Author: Bea Sauve
-- Date: May, 2026
-- Instructor: Ix Procpoius
-- Course: AD350 Database Technology

CREATE DATABASE dew_point;
USE dew_point;

CREATE TABLE user(
	userID INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number VARCHAR(15) NOT NULL,
	address VARCHAR(100) NOT NULL,
    
     CONSTRAINT userPK PRIMARY KEY (userID)
    -- uses 5 digit id to reference projects
    )AUTO_INCREMENT = 10001;
    
    CREATE TABLE supplier(
	supplierID INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
	phone_number VARCHAR(15),
	email VARCHAR(50) NOT NULL,
	status ENUM('Active', 'Inactive') NOT NULL DEFAULT 'Active',
	onboard DATE NOT NULL DEFAULT(CURRENT_DATE),
	offboard DATE,
    CONSTRAINT supplierPK PRIMARY KEY (supplierID),
    CONSTRAINT validOffBoard
		CHECK (offboard IS NULL OR offboard >= onboard)
)AUTO_INCREMENT = 101;


CREATE TABLE product(
	productID INT NOT NULL AUTO_INCREMENT,
	supplierID INT NOT NULL,
	product_name VARCHAR(100),
	product_type ENUM('Sparkling','Alkaline','Mineral') NOT NULL,
	inventory INT NOT NULL,
	size_ml INT NOT NULL DEFAULT 500,
	flavor VARCHAR(100),
    -- indicates if we still distribute this product
	active BOOLEAN NOT NULL DEFAULT TRUE,

	CONSTRAINT productPK PRIMARY KEY (productID),
    CONSTRAINT supplierFK
		FOREIGN KEY (supplierID) 
        REFERENCES Supplier(supplierID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
	-- Check valid bottle sizes
	CONSTRAINT sizeCheck
		CHECK (size_ml IN (250, 500, 750, 1000, 1500, 2000)),
	CONSTRAINT invCheck
		CHECK (inventory >= 0)
	
        
-- ID starts at 1
)AUTO_INCREMENT = 1;

CREATE TABLE subscription(
	subscriptionID INT NOT NULL AUTO_INCREMENT,
	userID INT NOT NULL,
	plan_name ENUM('Mist', 'Dew', 'Drizzle', 'Downpour' ) NOT NULL DEFAULT 'Dew',
	frequency Enum('Weekly', 'Bi Weekly', 'Monthly') NOT NULL DEFAULT 'Bi Weekly' ,
    duration Enum('Month', '6 Month','Year') NOT NULL DEFAULT '6 Month',
	box_size ENUM('4', '8', '16', '24') NOT NULL DEFAULT '8',
	status ENUM('Active', 'Inactive') NOT NULL DEFAULT 'Active',
	start_date DATE NOT NULL DEFAULT(CURRENT_DATE),
    -- Default condition, calculates end date based on subscription duration
	end_date DATE NOT NULL,
	CONSTRAINT subPK PRIMARY KEY (subscriptionID),
	CONSTRAINT sub_userFK
		FOREIGN KEY (userID) 
        REFERENCES user(userID)
		ON UPDATE CASCADE
        ON DELETE RESTRICT
) AUTO_INCREMENT = 100001;

CREATE TABLE sparkling_water(
	productID INT NOT NULL,
	carbonation_level ENUM('Light','Medium','Heavy')
		NOT NULL DEFAULT 'Medium',
    
    CONSTRAINT sparkPK PRIMARY KEY (productID),
    CONSTRAINT spark_prodFK
        FOREIGN KEY (productID)
        REFERENCES product(productID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE mineral_water(
	productID INT NOT NULL,
    calcium_mg     DECIMAL(6,2),
    magnesium_mg   DECIMAL(6,2),
    sodium_mg      DECIMAL(6,2),
    mineral_source VARCHAR(100),
    
    CONSTRAINT mineralPK PRIMARY KEY (productID),
    -- mineral levels must be above 0
    CONSTRAINT validCalcium   CHECK (calcium_mg >= 0),
    CONSTRAINT validMagnesium CHECK (magnesium_mg >= 0),
    CONSTRAINT validSodium    CHECK (sodium_mg >= 0),
    CONSTRAINT min_prodFK
		FOREIGN KEY (productID)
        REFERENCES product(productID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE alkaline_water(
	productID INT NOT NULL,
	PH_Level DECIMAL(3,1),

	CONSTRAINT alkPK PRIMARY KEY (productID),
    -- valid ph levels
    CONSTRAINT validPH
		CHECK (PH_Level >= 0.0 AND PH_Level <= 14.0),
    CONSTRAINT alk_prodFK
		FOREIGN KEY (productID)
        REFERENCES product(productID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE transaction(
	transactionID INT NOT NULL AUTO_INCREMENT,
	userID INT NOT NULL,
	productID INT NOT NULL,
	quantity INT NOT NULL,
    
    CONSTRAINT valQuantity CHECK (quantity > 0),
	receivedAt DATE NOT NULL DEFAULT(CURRENT_DATE), 
    
    CONSTRAINT tranPK PRIMARY KEY (transactionID),
    CONSTRAINT tran_custFK
		FOREIGN KEY (userID)
        REFERENCES user(userID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT tran_prodFK
		FOREIGN KEY (productID) 
        REFERENCES product(productID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)AUTO_INCREMENT = 6000001;

CREATE TABLE shipment(
	shipmentID INT NOT NULL,
	transactionID INT NOT NULL,
	status ENUM('Received', 'Label Created','In Transit', 'Out for Delivery','Delivered') NOT NULL DEFAULT 'Received', 
	schedule_date DATE,
	shipment_date DATE,
	tracking_number VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
    
    -- Check for valid shipping date
    CONSTRAINT valid_date
		CHECK (shipment_date IS NULL OR shipment_date >= schedule_date),
    CONSTRAINT shipmentpk PRIMARY KEY (shipmentID),
    CONSTRAINT ship_transFK 
		FOREIGN KEY (transactionID)
        REFERENCES transaction(transactionID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)AUTO_INCREMENT = 1000001;

CREATE TABLE product_review(
	reviewID VARCHAR(20) NOT NULL,
	userID INT NOT NULL,
	transactionID INT NOT NULL,
	rating INT,
	review_comment TEXT,
	review_date DATE NOT NULL DEFAULT(CURRENT_DATE),
    
    CONSTRAINT reviewPK PRIMARY KEY (reviewID),
    CONSTRAINT  rev_userFK 
		FOREIGN KEY (userID) 
        REFERENCES user(userID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT rev_transFK
		FOREIGN KEY (transactionID)
        REFERENCES transaction(transactionID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);







