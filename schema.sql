CREATE DATABASE MNMarketLink;
USE MNMarketLink;

CREATE TABLE Vendor (
  VendorID INT AUTO_INCREMENT PRIMARY KEY,
  BusinessName VARCHAR(100) NOT NULL,
  Email VARCHAR(50),
  Phone VARCHAR(20),
  Address VARCHAR(100)
);

CREATE TABLE Customer (
  CustomerID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Email VARCHAR(50),
  Phone VARCHAR(20),
  Address VARCHAR(100)
);

CREATE TABLE Market (
  MarketID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Location VARCHAR(100)
);

CREATE TABLE Product (
  ProductID INT AUTO_INCREMENT PRIMARY KEY,
  VendorID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Description TEXT,
  Price DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_product_vendor
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

CREATE TABLE VendorMarket (
  VendorMarketID INT AUTO_INCREMENT PRIMARY KEY,
  VendorID INT NOT NULL,
  MarketID INT NOT NULL,
  DateAvailable DATE,
  StartTime TIME,
  EndTime TIME,
  CONSTRAINT fk_vendormarket_vendor
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID),
  CONSTRAINT fk_vendormarket_market
    FOREIGN KEY (MarketID) REFERENCES Market(MarketID)
);

CREATE TABLE Orders (
  OrderID INT AUTO_INCREMENT PRIMARY KEY,
  CustomerID INT NOT NULL,
  VendorID INT NOT NULL,
  OrderDate DATETIME NOT NULL,
  PickupDate DATETIME,
  TotalPrice DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  CONSTRAINT fk_orders_vendor
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

CREATE TABLE OrderItems (
  OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
  OrderID INT NOT NULL,
  ProductID INT NOT NULL,
  Quantity INT NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_orderitems_order
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  CONSTRAINT fk_orderitems_product
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
